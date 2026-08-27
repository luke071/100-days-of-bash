# Day 5 - User ID Verification with While

while is used to repeat commands while a condition is true.
```
while true; do
    commands
done
```
break stops the loop.

grep is used to search for text in a file.
```
grep -qx "$user_id" "$file"
```
-q — quiet mode, no output.  
-x — exact match of the whole line.  

In this script, while repeatedly asks the user for an ID, while grep checks if the ID exists in the file. If the ID is found, break ends the loop.


Write a Bash shell script that will verify whether the user-supplied ID exists in a file.  

[See script](main.sh)  
[← Main Page](../README.md)