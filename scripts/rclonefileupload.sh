#!/bin/bash

# Script to stream a large file from a URL and upload it to Google Drive using rclone and wget

echo "=== Stream Download and Upload Script ==="

# Prompt the user for the download link
read -p "Enter the download URL: " FILE_URL

# Set default rclone remote name to "onedrive"
DEFAULT_REMOTE="onedrive"
read -p "Enter the rclone remote name (default: $DEFAULT_REMOTE): " REMOTE_NAME
REMOTE_NAME=${REMOTE_NAME:-$DEFAULT_REMOTE}  # Use default if not provided

# Prompt the user for the Google Drive path (relative to the remote)
DEFAULT_PATH="backups"
read -p "Enter the Google Drive folder path (default: $DEFAULT_PATH): " REMOTE_PATH
REMOTE_PATH=${REMOTE_PATH:-$DEFAULT_PATH}  # Use default if not provided

# Extract the file name from the URL
FILE_NAME=$(basename "$FILE_URL")

# Confirm the details with the user
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

# Check if wget is installed
if ! command -v wget &> /dev/null; then
  echo "Error: wget is not installed. Please install it and try again."
  exit 1
fi

# Test the rclone remote and folder path
echo "Testing rclone remote and path..."
rclone lsf "$REMOTE_NAME:$REMOTE_PATH" &> /dev/null
if [ $? -ne 0 ]; then
  echo "Error: Remote '$REMOTE_NAME' or path '$REMOTE_PATH' is invalid. Please check your rclone configuration."
  exit 1
fi
echo "Remote and path are valid."

# Start the download and upload process
echo "Starting download from $FILE_URL and uploading to Google Drive ($REMOTE_NAME:$REMOTE_PATH/$FILE_NAME)..."

wget -O - "$FILE_URL" | rclone rcat --progress "$REMOTE_NAME:$REMOTE_PATH/$FILE_NAME"

# Check the result
if [ $? -eq 0 ]; then
  echo "File successfully downloaded and uploaded to Google Drive."
else
  echo "An error occurred during the process. Please check your setup and try again."
fi
