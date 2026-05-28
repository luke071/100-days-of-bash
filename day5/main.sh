#!/bin/bash

file="list_id.txt"

[[ ! -f "$file" ]] && touch "$file"

echo "[==== SYSTEM ACCESS CHECK ====]"

while true; do
    read -p "Enter your ID: " user_id

    if grep -qx "$user_id" "$file"; then
        echo "ID correct - access granted."
        break
    else
        echo "ID not found. Please try again."
    fi
done