#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 file user"
    exit 1
fi

FILE="$1"
USER="$2"

echo "File: $FILE"
echo "User: $USER"