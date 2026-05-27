#!/bin/bash

secret=$((RANDOM % 10 + 1))

echo "Guess a number from 1 to 10."
read shot

if [ "$shot" -eq "$secret" ] 2>/dev/null; then
    echo "You got it! The number is $secret."
fi