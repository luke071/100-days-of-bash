#!/bin/bash

echo "Scanning network 192.168.1.0/24"

for i in {1..254}
do
    IP="192.168.1.$i"

    if ping -c 1 -W 1 "$IP" > /dev/null 2>&1
    then
        echo "Active host: $IP"
    fi
done

echo "Scanning completed"