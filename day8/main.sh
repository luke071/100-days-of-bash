#!/bin/bash

LOG="/var/log/prosty.log"

echo "Start" > "$LOG"

echo "Adding a line" >> "$LOG"

echo -n "Enter username: "
read USER

id "$USER" >> "$LOG" 2>> "$LOG"

echo "Redirection test" &>> "$LOG"

cat /etc/passwd 2>/dev/null | grep bash >> "$LOG" 2>/dev/null

echo "End" >> "$LOG"
