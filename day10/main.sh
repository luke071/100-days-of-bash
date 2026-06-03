#!/bin/bash

echo "Enter a number:"
read x

echo "Enter the second number:"
read y

sum=$(( x + y ))
mod=$(( x % y ))

echo "Sum of numbers: $sum"
echo "Modulo (x % y): $mod"

(( x++ ))
echo "After incrementing x (x++): $x"

(( y += 5 ))
echo "After y += 5: $y"

if [ "$x" -eq "$y" ]; then
    echo "The numbers are equal"
elif [ "$x" -gt "$y" ]; then
    echo "The first number is larger"
else
    echo "The second number is larger"
fi