#!/bin/bash

FILE="/tmp/testfile"
DIR="/tmp/testdir"

touch "$FILE"
mkdir -p "$DIR"

echo "=== Combined Tests ==="

if [[ -f "$FILE" && -r "$FILE" ]]; then
    echo "File exists and is readable"
fi

if [[ -d "$DIR" ]]; then
    echo "Directory exists"
fi

STRING="hello"

if [[ -n "$STRING" && "$STRING" == "hello" ]]; then
    echo "String is valid"
fi

A=10
B=20

if [[ "$A" -lt "$B" ]]; then
    echo "$A is less than $B"
fi

echo
echo "=== Cleanup ==="

rm "$FILE"
rmdir "$DIR"
