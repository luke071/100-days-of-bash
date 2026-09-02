#!/bin/bash

NETWORK="192.168.1.0/24"

echo "Starting Nmap scan..."
START=$(date +%s)

nmap -sn "$NETWORK" > nmap_result.txt

END=$(date +%s)

echo "Scan completed in $((END - START)) seconds"
echo
echo "Active hosts:"
grep "Nmap scan report" nmap_result.txt
