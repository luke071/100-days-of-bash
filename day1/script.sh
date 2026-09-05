#!/bin/bash

echo "==== SYSTEM INFORMATION ===="

CMD='hostname'
echo "System hostname: $($CMD)"

echo ""
echo "System uptime :"
uptime

echo ""
echo -e "\tSystem memory usage:"
free -h

echo -e "\nDisk space usage:"
df -h

KERNEL=$(uname -r)

printf "%-20s %-30s\n" "Check" "Result"
printf "%-20s %-30s\n" "--------------------" "------------------------------"

printf "%-20s %-30s\n" "Kernel version" "$KERNEL"

