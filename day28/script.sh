#!/usr/bin/env bash

HOST="$1"

if ! command -v dig >/dev/null 2>&1; then
    echo "[ERROR] dig is not installed or not found in PATH."
    exit 1
fi

if [[ -z "$HOST" ]]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

echo "DNS lookup for: $HOST"
echo

IP=$(dig +short A "$HOST" | head -n 1)

if [[ -n "$IP" ]]; then
    echo "[OK] $HOST -> $IP"
else
    echo "[ERROR] No IPv4 address found."
    exit 1
fi
