#!/bin/bash

echo "Initializing link diagnostics..."
sleep 1

BASE="original.txt"
HARD="hard.txt"
SOFT="soft.txt"

echo "Base file content" > "$BASE"

ln "$BASE" "$HARD"
ln -s "$BASE" "$SOFT"

echo "checking links..."
sleep 1

echo "Hard link:"
ls -li "$HARD"

echo
echo "Symbolic link:"
ls -li "$SOFT"

echo
echo "removing base file..."
rm "$BASE"

echo
echo "Hard link after removing original:"
cat "$HARD"

echo
echo "Symbolic link after removing original:"
cat "$SOFT" 2>/dev/null || echo "symlink: broken"