#!/bin/bash

NAME="Alice"

if [[ "$NAME" == A* ]]; then
    echo "Name starts with A"
else
    echo "Name does not start with A"
fi
