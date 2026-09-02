#!/bin/bash

FILE="file.txt"
STR="$1"

echo "--- [ ] test ---"

[ -f "$FILE" ] && echo "[ ] : file exists"

[ "$STR" = "ok" ] && echo "[ ] : string is ok"

echo
echo "--- [[ ]] test ---"

[[ -f "$FILE" ]] && echo "[[ ]] : file exists"

[[ "$STR" == "ok" ]] && echo "[[ ]] : string is ok"

echo
echo "--- [[ ]] with pattern ---"

[[ "$STR" == o* ]] && echo "[[ ]] : string starts with 'o'"

echo
echo "--- Logical operators ---"

[[ -f "$FILE" && -r "$FILE" ]] && \
    echo "[[ ]] : file exists and is readable"