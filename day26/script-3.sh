#!/bin/bash

NETWORK="192.168.1.0/24"
OUTPUT="nmap_result.txt"

if ! command -v nmap >/dev/null 2>&1; then
    echo "[ERROR] Nmap is not installed."
    exit 1
fi

echo "[OK] Nmap found: $(command -v nmap)"
echo "Starting Nmap scan..."

START=$(date +%s)

if ! nmap -sn "$NETWORK" > "$OUTPUT"; then
    echo "[ERROR] Nmap scan failed."
    exit 2
fi

END=$(date +%s)

echo "Scan completed in $((END - START)) seconds"
echo
echo "Active hosts:"
grep "Nmap scan report" "$OUTPUT"
