#!/bin/bash

users=$(cat /etc/passwd)

if grep -q "^root:" /etc/passwd; then
    echo "root exists"
fi