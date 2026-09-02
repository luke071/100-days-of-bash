#!/bin/bash

FILE="file.txt"
DIR="dir"
STR="$1"

A=4
B=16

echo "--- Basic test ---"

[ -e "$FILE" ]
echo "Exit status: $?"

echo
echo "--- Test with && ---"

[ -e "$FILE" ] && echo "$FILE exists"

echo
echo "--- Test with ! ---"

[ ! -e "missing.txt" ] && echo "missing.txt does not exist"

echo
echo "--- String test ---"

[ "$STR" = "ok" ] && echo "STR is ok"

echo
echo "--- Number test ---"

[ "$A" -lt "$B" ] && echo "$A is less than $B"

echo
echo "--- Multiple tests ---"

[ -f "$FILE" ] && [ -r "$FILE" ] && \
    echo "$FILE exists and is readable"