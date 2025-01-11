#!/bin/bash

# Script to download a large file and upload it to Google Drive using rclone

echo "=== Download and Upload Script ==="

# Prompt the user for the download link
read -p "Enter the download URL: " FILE_URL

# Prompt the user for the Google Drive remote name
read -p "Enter the rclone remote name (default: onedrive): " REMOTE_NAME
REMOTE_NAME=${REMOTE_NAME:-onedrive}  # Default to "onedrive" if not provided

# Prompt the user for the Google Drive path
read -p "Enter the Google Drive folder path (default: backups): " REMOTE_PATH
REMOTE_PATH=${REMOTE_PATH:-backups}  # Default to "backups" if not provided

# Extract the file name from the URL
FILE_NAME=$(basename "$FILE_URL")

# Confirm the inputs with the user
echo "You have entered the following details:"
echo "Download URL: $FILE_URL"
echo "Google Drive Remote Name: $REMOTE_NAME"
echo "Google Drive Folder Path: $REMOTE_PATH"
echo "File Name: $FILE_NAME"
read -p "Is this correct? (y/n): " CONFIRM
if [[ "$CONFIRM" != "y" ]]; then
  echo "Exiting script. Please try again with correct details."
  exit 1
fi

# Check if rclone is installed
if ! command -v rclone &> /dev/null; then
  echo "Error: rclone is not installed. Please install it and try again."
  exit 1
fi

# Check if curl or wget is installed
if ! command -v curl &> /dev/null && ! command -v wget &> /dev/null; then
  echo "Error: Neither curl nor wget is installed. Please install one and try again."
  exit 1
fi

# Start the download and upload process
echo "Starting download from $FILE_URL and uploading to Google Drive ($REMOTE_NAME:$REMOTE_PATH/$FILE_NAME)..."

if command -v curl &> /dev/null; then
  # Use curl if available
  curl -L "$FILE_URL" | rclone rcat --progress "$REMOTE_NAME:$REMOTE_PATH/$FILE_NAME"
elif command -v wget &> /dev/null; then
  # Use wget if available
  wget -O - "$FILE_URL" | rclone rcat --progress "$REMOTE_NAME:$REMOTE_PATH/$FILE_NAME"
fi

# Check the result
if [ $? -eq 0 ]; then
  echo "File successfully downloaded and uploaded to Google Drive."
else
  echo "An error occurred during the process. Please check your setup and try again."
fi
