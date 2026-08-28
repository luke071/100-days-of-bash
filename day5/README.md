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

## Task
  
The script should:  

Create list_id.txt if it does not exist.  
Ask the user to enter their ID.  
Check if the entered ID exists in the file.  
Display "ID correct - access granted." if the ID is found.  
Display "ID not found. Please try again." if the ID is not found.  
Continue asking for an ID until a valid ID is entered.  

[See script](script.sh)  
[← Main Page](../README.md)