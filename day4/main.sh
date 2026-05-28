#!/bin/bash

echo "Enter a file name:"
read file

if [ -f "$file" ]; then
    echo "The file exists"
else
    echo "The file does not exist"
fi