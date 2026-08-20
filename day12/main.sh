#!/bin/bash

echo "Enter text:"
read txt

echo "Enter a number"
read num

if [ -z "$txt" ]; then
    echo "The text is empty (POSIX test)"
fi
 
if [[ "$num" -gt 10 ]]; then
    echo "The number is greater than 10 (Bash test)"
else
    echo "The number is less than or equal to 10 (Bash test)"
fi
 
if [[ -n "$txt" && "$num" -gt 0 ]]; then
    echo "Text and a number greater than 0 were given"
fi

if [[ -z "$txt" || "$num" -le 0 ]]; then
    echo "No text OR number not greater than 0"
fi

if [[ ! -z "$txt" && ! "$num" -eq 0 ]]; then
    echo "Text is not empty AND number is not zero"
fi