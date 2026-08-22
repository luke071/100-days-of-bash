# Day 23 Practical Task EX200
## Bash scripts with the scope of the EX200 material


## 1. Create a script to add users from a csv file. 
Additional assumptions:  
- the password must be changed upon first login;  
- the maximum password validity period is 60 days;  
- a warning will be displayed 7 days before the password expires.  

File users.csv  

```csv
username,password
fbaggins,T29GETEi6
sgamgee,pg06RhJXC
mbrandybuck,iWpMa1mmu
```
[See script](01-scripting-task.sh)  

## 2. Create a script that locates and copies all files larger than 3 MB from the "/etc" directory on the server to a new directory "/find/3mfiles".
[See script](02-scripting-task.sh)  

## 3. Create a shell script called "/find.sh" that effectively counts the number of regular files matching a specified pattern (given as the first argument) in the "/home" directory and its subdirectories. Implement error handling and informative output. 
[See script](03-scripting-task.sh)  

## 4. Create a versatile and informative shell script named "/trim.sh" that effectively removes any occurrences of the vowels "a", "i", "e", "o", and "u" from all provided arguments, regardless of their order. Ensure the script is wellformatted, incorporates error handling, provides clear output, and adheres to best practices.
[See script](04-scripting-task.sh)  

## 5. Create a concise and efficient shell script named "/names.sh" that extracts and prints a clear list of usernames and their corresponding primary groups from the "/etc/passwd" file. Ensure the script is well-formatted, adheres to best practices, and includes informative comments for clarity.
[See script](05-scripting-task.sh)  

## 6. Write a shell script "./yes-no.sh".
Additional assumptions:  
- If the argument is 'yes', the script should run the command echo “that's nice”. 
- If the argument is 'no', the script should run the command echo "I am sorry to hear that".
- If the argument is anything else, the script should run the command echo "unknown argument provided"  

[See script](06-scripting-task.sh)  
## 7. Create a script "search.sh" placed in "/usr/local/bin/" used to find all files in "/usr" that are smaller than 8M and have SUID permission, then place these files in "/root/result/".
[See script](07-scripting-task.sh)  
## 8. Create a backup script "/etc/scripts/backup.sh" to run every 30 minutes.

[See script](08-scripting-task.sh)  

[← Main Page](../README.md)