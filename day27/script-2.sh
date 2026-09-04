#!/usr/bin/env bash

HOST="$1"

if ! command -v nmap >/dev/null 2>&1; then
    echo "[ERROR] Nmap is not installed or not found in PATH."
    exit 1
fi

if [[ -z "$HOST" ]]; then
    echo "Usage: $0 <host>"
    exit 1
fi

echo "Scanning: $HOST"
echo

# Scan selected ports
nmap -Pn -p 22,23,53,80,443,3389 "$HOST" |
    awk '/^[0-9]+\/tcp/ {
        split($1, p, "/");
        printf "[%-6s] %s\n", toupper($2), p[1]
    }'