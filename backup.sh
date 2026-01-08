#!/bin/bash

# Define source and destination directories
SOURCE="$HOME/Documents"
DEST="$HOME/backup"

# Store current date
DATE=$(date +%Y-%m-%d)

# Create backup directory if it does not exist
mkdir -p "$DEST"

# Check if source directory exists
if [ -d "$SOURCE" ]; then
    tar -czf "$DEST/backup-$DATE.tar.gz" "$SOURCE"
    echo "Backup completed successfully on $DATE"
else
    echo "Error: Source directory not found."
fi
