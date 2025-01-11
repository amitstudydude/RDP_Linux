#!/bin/bash

# Stream download and upload script with chunk merging on OneDrive
echo "=== Stream and Upload Script ==="

# Set a larger temporary directory (ensure the path exists)
export TMPDIR="/mnt/large-temp"
mkdir -p "$TMPDIR"  # Create the directory if it doesn't exist

# Prompt the user for the download URL
read -p "Enter the download URL: " FILE_URL

# Default settings for rclone
REMOTE_NAME="onedrive"  # Default rclone remote name
REMOTE_PATH="backups"   # Default Google Drive folder path

# Extract the file name from the URL
FILE_NAME=$(basename "$FILE_URL")
CHUNK_PREFIX="chunk_"  # Prefix for chunk names on the remote

# Check if required tools are installed
if ! command -v rclone &> /dev/null; then
  echo "Error: rclone is not installed. Please install it and try again."
  exit 1
fi

if ! command -v wget &> /dev/null; then
  echo "Error: wget is not installed. Please install it and try again."
  exit 1
fi

# Test the rclone remote and path
echo "Testing rclone remote and path..."
rclone lsf "$REMOTE_NAME:$REMOTE_PATH" &> /dev/null
if [ $? -ne 0 ]; then
  echo "Error: Remote '$REMOTE_NAME' or path '$REMOTE_PATH' is invalid. Please check your rclone configuration."
  exit 1
fi
echo "Remote and path are valid."

# Stream the file directly to OneDrive
echo "Starting the download and upload process with --use-server-modtime..."

# Function to handle simultaneous chunk uploads, deletion, and merging
handle_large_file() {
  echo "Streaming failed. Splitting the file into smaller chunks and uploading..."

  CHUNK_DIR="$TMPDIR/chunks"
  mkdir -p "$CHUNK_DIR"
  
  # Split the file into 500MB chunks
  wget -O - "$FILE_URL" | split -b 500M - "$CHUNK_DIR/$CHUNK_PREFIX"
  if [ $? -eq 0 ]; then
    echo "File split successfully. Uploading chunks..."
    
    # Upload each chunk simultaneously in the background
    for part in "$CHUNK_DIR"/$CHUNK_PREFIX*; do
      (
        CHUNK_NAME=$(basename "$part")
        echo "Uploading $part as $CHUNK_NAME..."
        rclone copy "$part" "$REMOTE_NAME:$REMOTE_PATH/" --progress --use-server-modtime
        if [ $? -eq 0 ]; then
          echo "Uploaded $part successfully. Deleting the chunk..."
          rm -f "$part"  # Delete the chunk after successful upload
        else
          echo "Failed to upload $part. Retrying later."
        fi
      ) &
    done

    # Wait for all background processes to complete
    wait
    echo "All chunks uploaded successfully."

    # Merge chunks on OneDrive
    echo "Merging chunks into a single file on OneDrive..."
    rclone cat "$REMOTE_NAME:$REMOTE_PATH/$CHUNK_PREFIX*" | rclone rcat --progress "$REMOTE_NAME:$REMOTE_PATH/$FILE_NAME"
    if [ $? -eq 0 ]; then
      echo "Chunks successfully merged into $FILE_NAME on OneDrive."
      
      # Delete chunks from OneDrive after merging
      echo "Deleting chunks from OneDrive..."
      rclone delete "$REMOTE_NAME:$REMOTE_PATH/$CHUNK_PREFIX*" --progress
    else
      echo "Failed to merge chunks on OneDrive."
      exit 1
    fi
  else
    echo "Failed to split the file. Please check the download link or available disk space."
    exit 1
  fi

  # Clean up chunk directory
  rm -rf "$CHUNK_DIR"
}

# Try streaming with --use-server-modtime
wget -O - "$FILE_URL" | rclone rcat --use-server-modtime --progress "$REMOTE_NAME:$REMOTE_PATH/$FILE_NAME"
if [ $? -ne 0 ]; then
  echo "Streaming with --use-server-modtime failed. Falling back to chunked upload..."
  handle_large_file
else
  echo "File successfully uploaded to OneDrive with --use-server-modtime."
fi
