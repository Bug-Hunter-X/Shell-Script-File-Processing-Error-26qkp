#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle error that can lead to unexpected behavior.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  # The error is in the next line.  We should use "$i" instead of "$files"
  if [ -f "$files" ]; then
    echo "Processing file: $i"
    # Process file $i here...
  else
    echo "Error: File '$i' not found"
  fi
  # Added sleep to show the files being processed one by one. This helps in debugging
  sleep 1
done