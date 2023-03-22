#!/bin/bash

# Loop through each file in the current directory
for file in *; do
    # Check if the file is a regular file (not a directory or symlink)
    if [[ -f "$file" ]]; then
        # Extract the filename and extension
        filename=$(basename "$file")
        extension="${filename##*.}"

        # Create the subdirectory if it doesn't exist
        mkdir -p "$extension"

        # Move the file to the subdirectory
        mv "$file" "$extension/$filename"
    fi
done
