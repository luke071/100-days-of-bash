#!/bin/bash

NAME="Luke"
FILE="/etc/passwd"

echo "Name: $NAME"
echo "File: $FILE"

if [ -f "$FILE" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi