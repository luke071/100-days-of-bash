#!/bin/bash

# Get the filename from the first argument
file="$1"

# Check if an argument was provided
if [ -z "$file" ]; then
    echo "Usage: ./script.sh <logfile>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: file '$file' does not exist"
    exit 1
fi

# Count total entries
total=$(wc -l < "$file")

# Count log levels
info=$(grep " INFO " "$file" | wc -l)
warning=$(grep " WARNING " "$file" | wc -l)
error=$(grep " ERROR " "$file" | wc -l)

echo "Total: $total"
echo "INFO: $info"
echo "WARNING: $warning"
echo "ERROR: $error"
echo

echo "Users:"

# Extract users, sort them and count occurrences
awk '{print $4}' "$file" | cut -d'=' -f2 | sort | uniq -c | awk '{print $2 ": " $1}'

echo

echo "Most common action:"

# Extract actions, count them and find the most common one
awk '{print $5}' "$file" | cut -d'=' -f2 | sort | uniq -c | sort -nr | head -1 | awk '{print $2 ": " $1}'
