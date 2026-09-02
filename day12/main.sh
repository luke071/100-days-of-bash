#!/bin/bash

FILE="/tmp/testfile"
HARD="/tmp/hardlink"
SOFT="/tmp/symlink"

echo "Test file" > "$FILE"

ln "$FILE" "$HARD"
ln -s "$FILE" "$SOFT"

ls -li "$FILE" "$HARD" "$SOFT"

echo
echo "Hard link:"
cat "$HARD"

echo
echo "Symbolic link:"
cat "$SOFT"