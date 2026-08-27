#!/bin/bash

echo "Log files:"
echo "-----------"

find /var/log -type f -name "*.log" -exec echo {} \;