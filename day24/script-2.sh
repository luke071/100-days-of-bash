#!/bin/bash

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

# Create backup filename with current date and time
date_time=$(date +"%Y-%m-%d_%H-%M-%S")
backup="$file-$date_time.tar.gz"

# Create backup
if ! tar -czf "$backup" "$file"; then
    echo "Error: could not create backup"
    exit 1
fi

# Verify that the archive contains the correct file
if tar -tzf "$backup" | grep -q "^$file$"; then
    echo "Backup created: $backup"
else
    echo "Error: backup verification failed"
    exit 1
fi

# Analyze the log
total=$(wc -l < "$file")

info=$(grep " INFO " "$file" | wc -l)
warning=$(grep " WARNING " "$file" | wc -l)
error=$(grep " ERROR " "$file" | wc -l)

echo "Total: $total"
echo "INFO: $info"
echo "WARNING: $warning"
echo "ERROR: $error"
echo

echo "Users:"
awk '{print $4}' "$file" | cut -d'=' -f2 | sort | uniq -c | awk '{print $2 ": " $1}'

echo

echo "Most common action:"
awk '{print $5}' "$file" | cut -d'=' -f2 | sort | uniq -c | sort -nr | head -1 | awk '{print $2 ": " $1}'
