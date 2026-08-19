#!/bin/bash

LOG=/var/log/login.log
OUT=/root/failed_users.txt

if [ ! -f "$LOG" ]; then
    echo "Error: file $LOG does not exist!"
    exit 1
fi

grep "FAILED" "$LOG" \
    | sed 's/status=FAILED//' \
    | awk '{print $3}' \
    | cut -d"=" -f2 \
    | sort | uniq -c \
    > "$OUT"

if [ -s "$OUT" ]; then
    echo "Result saved in $OUT"
else
    echo "No failed login attempts."
fi