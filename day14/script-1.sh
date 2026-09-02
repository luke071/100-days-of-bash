#!/bin/bash

FILE="test.txt"

if [ -f "$FILE" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
