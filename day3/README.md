# Day 3 - Guess the Number

Bash can generate a random number using the built-in $RANDOM variable and store it in a variable:
```
secret=$((RANDOM % 10 + 1))
```
% 10 gives a remainder from 0 to 9, and + 1 changes the range to 1–10.

Variables can be accessed using $, for example "$secret".

Use read to get a value from the user. The [ command can test conditions, and -eq checks if two numbers are equal.

An if statement runs commands only when a condition is true:
```
if [ condition ]; then
    command
fi
```
2>/dev/null hides error messages from the terminal when invalid input is entered.

## Task
Write a script that randomly selects a number from 1 to 10 and checks whether the user guessed it correctly.

[Show solution](script.sh)  
[Bash Test Operators Table](../assets/bash-test-operators.md)  
[← Main Page](../README.md)