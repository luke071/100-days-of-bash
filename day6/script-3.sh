#!/bin/bash

echo "[*] scanning /etc recursively for .conf files"

find /etc -type f -name "*.conf" | while read -r file; do
    echo "[+] found: $file"
done

echo "[*] scan complete."