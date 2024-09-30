#!/bin/bash

# Check if a file is provided as an argument
if [ -z "$1" ]; then
  echo "You can use this tool to run a query using the Google Analytics Data API."
  echo "Usage: $0 <filename>"
  exit 1
fi

# Get the filename from the first argument
filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi


# Run the file
./"$filename"

# Check the exit code of the executed file
if [ $? -ne 0 ]; then
  echo "Error: Failed to execute '$filename'."
  exit 1
fi
Use code with caution.


