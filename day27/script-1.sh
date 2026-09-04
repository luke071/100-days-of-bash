#!/usr/bin/env bash

HOST="$1"

for port in 22 23 53 80 443 3389; do
    if timeout 1 bash -c "</dev/tcp/$HOST/$port" 2>/dev/null; then
        echo "[OPEN] $port"
    else
        echo "[CLOSED] $port"
    fi
done
