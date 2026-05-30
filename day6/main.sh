#!/bin/bash

echo "[*] scanning /etc for .conf files"

for file in /etc/*.conf; do
    echo "[+] found: $file"
done

echo "[*] scan complete."