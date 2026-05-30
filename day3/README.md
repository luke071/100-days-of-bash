# Day 3 - Guess the number
Write a script that randomly selects a number from 1 to 10 and checks whether the user guessed it correctly.

[See script](main.sh)

Drawing a random number and assigning it to a variable:
```bash
secret=$((RANDOM % 10 + 1))
```
Built-in test function:
```bash
[ ... ]
```
Integer comparisons (equal):
```bash
"$shot" -eq "$secret"
```
If the user enters non-numeric data, the redirect will hide this message:
```bash
2>/dev/null
```
Conditional loop scheme:
```bash
if [ condition ]; then
    command
fi
```
[Bash Test Operators Table](../assets/bash-test-operators.md)  
[← Main Page](../README.md)