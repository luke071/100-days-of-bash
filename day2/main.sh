#!/bin/bash
echo -e "\e[46m==== SYSTEM INFORMATION ====\e[0m"

CMD='hostname'
echo -e "\e[32mSystem hostname: $($CMD)\e[0m"

echo ""
echo -e "\e[32mSystem uptime :\e[0m"
uptime

echo ""
echo -e "\t\e[32mSystem memory usage:\e[0m"
free -h

echo -e "\n\e[32mDisk space usage:\e[0m"
df -h

KERNEL=$(uname -r)

printf "%-20s %-30s\n" "Check" "Result"
printf "%-20s %-30s\n" "--------------------" "------------------------------"

printf "%-20s %-30s\n" "Kernel version" "$KERNEL"


