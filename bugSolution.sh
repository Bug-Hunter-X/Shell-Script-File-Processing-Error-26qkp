#!/bin/bash

# This script correctly processes a list of files.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  # The corrected line now uses "$i" to check individual file existence
  if [ -f "$i" ]; then
    echo "Processing file: $i"
    # Process file $i here...
  else
    echo "Error: File '$i' not found"
  fi
  # Added sleep to show the files being processed one by one. This helps in debugging
  sleep 1
done