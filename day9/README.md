# Day 9 Variables + Quoting
## Variables

Variables are used to store and reuse values in Bash. A variable can contain text, numbers, file paths, or other data.

Variables are created using the following syntax:
```
NAME="Luke"
```
There must be no spaces around the = sign.

To access the value stored in a variable, use $ before the variable name:
```
echo "$NAME"
```
Variables make scripts easier to modify because a value can be stored once and reused multiple times.

## Quoting

Quoting controls how Bash interprets text and variables.

Double quotes " " allow variable expansion. This means Bash replaces the variable with its stored value:
```
echo "$NAME"
```
Single quotes ' ' prevent variable expansion. The text is treated literally:
```
echo '$NAME'
```
Without quotes, Bash performs variable expansion, but spaces and special characters can affect how the value is interpreted.

For this reason, using double quotes around variables is generally recommended:
```
echo "$NAME"
```
Quoting is especially important when variables contain spaces, special characters, or file paths

# Task 1

Create a Bash script that demonstrates the difference between double quotes, single quotes, and no quotes when using a variable.

Store Luke Skywalker in a variable and display it three times using each type of quoting.

Expected output:
```
Luke Skywalker
$var
Luke Skywalker
```
[See example ](script-1.sh) 

# Task 2

Create a Bash script that uses variables to store a name and a file path.

The script should:  

Store a name in a variable.  
Store a file path in another variable.  
Display both values.  
Check if the specified path is a regular file.  
Display whether the file exists or not.  

Expected output:  
```
Name: Luke
File: /etc/passwd
File exists.
```
[See example ](task-2.sh)  
 [← Main Page](../README.md)