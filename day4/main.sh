#!/bin/bash

echo "Enter a file name:"
read file

if [ -f "$file" ]; then
    echo "The file exists in the current folder"
else
    echo "The file does not exist in the current folder"
fi