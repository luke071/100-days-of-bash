#!/bin/bash

# Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

FILE="$1"

# Check if the file exists
if [ -e "$FILE" ]; then
    echo "File exists: $FILE"

    # Check if it is a regular file
    if [ -f "$FILE" ]; then
        echo "Type: regular file"
    fi

    # Check if it is a directory
    if [ -d "$FILE" ]; then
        echo "Type: directory"
    fi

    # Check read permission
    if [ -r "$FILE" ]; then
        echo "Readable: YES"
    else
        echo "Readable: NO"
    fi

    # Check write permission
    if [ -w "$FILE" ]; then
        echo "Writable: YES"
    else
        echo "Writable: NO"
    fi

    # Check execute permission
    if [ -x "$FILE" ]; then
        echo "Executable: YES"
    else
        echo "Executable: NO"
    fi

else
    echo "File does not exist: $FILE"
    exit 2
fi

echo "Exit status: $?"

