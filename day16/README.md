# Day 16 Case Statement

The case statement in Bash is used to execute different commands depending on the value of a variable. It is useful when there are multiple possible choices.

The basic syntax is:
```
case "$variable" in
    pattern1)
        commands
        ;;
    pattern2)
        commands
        ;;
    *)
        commands
        ;;
esac
```
Each option ends with ;;. The * pattern works as a default option when none of the other patterns match.

[Example: case statement in Bash](script-1.sh) 

# Task: User Creation from File
Write a Bash script that automatically creates system users based on entries in a `users.txt` file.  

The script should:  

1. Prompt the user to select an operating system: RHEL or Debian.  
2. Use the appropriate command based on the selection:  
for RHEL – `useradd`,  
for Debian – `adduser --disabled-password --gecos ''`.  
3. Display a message indicating the selected system and the command being used.  
4. Check if the `users.txt` file exists; if the file is missing, display an error message and terminate the script.  
5. Read usernames from `users.txt`, with one username per line.  
6. Skip any empty lines in the file.  
7. Attempt to create an account for each username.  
8. Display a message after creating each user (e.g., "Added: username").  
9. Display a usage message explaining the script's function if the operating system is not specified correctly.  

Example content of `users.txt`:  
```
Andrew  
John  
Mark
```
[See script](main.sh)    
[← Main Page](../README.md)