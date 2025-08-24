#!/bin/bash

# Script to copy GEMINI.md to home directory
# Will overwrite if file already exists

SOURCE_FILE="$(dirname "$0")/GEMINI.md"
DEST_FILE="$HOME/GEMINI.md"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: GEMINI.md not found in script directory"
    exit 1
fi

# Copy the file (will overwrite if exists)
cp "$SOURCE_FILE" "$DEST_FILE"

if [ $? -eq 0 ]; then
    echo "Successfully copied GEMINI.md to $DEST_FILE"
else
    echo "Error: Failed to copy GEMINI.md"
    exit 1
fi
