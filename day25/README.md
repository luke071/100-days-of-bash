# Day 25 Practical Tasks EX200
## Bash scripts with the scope of the EX200 material
### Task 1: Conditional Script
On `Server A`, create the required users and groups according to the specifications below.

| User | UID | Supplementary Groups |
|---|---:|---|
| `John` | `2060` | `devops_admin`, `devops_engineers` |
| `Andrew` | `2070` | `sysadmin` |
| `Peter` | `2080` | `devops_admin` |

### Requirements

- Create all required groups if they do not already exist.
- Create the users with the specified UIDs.
- Add each user to the required supplementary groups.
- Set the password for `John`, `Andrew`, and `Peter` to `Pa$$w0rd!`.
- Perform the configuration on `Server A`.
- Ensure that the users and groups are correctly configured.  

[See solution](task1-solution.sh)

### Task 2: Create a script to add users from a csv file. 
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
[See solution](task2-solution.sh)

### Task 3: Create a script that locates and copies all files larger than 3 MB from the "/etc" directory on the server to a new directory "/find/3mfiles".
[See solution](task3-solution.sh)

### Task 4: Create a shell script called "/find.sh" that effectively counts the number of regular files matching a specified pattern (given as the first argument) in the "/home" directory and its subdirectories. Implement error handling and informative output. 
[See solution](task4-solution.sh)  

### Task 5: Create a versatile and informative shell script named "/trim.sh" that effectively removes any occurrences of the vowels "a", "i", "e", "o", and "u" from all provided arguments, regardless of their order. Ensure the script is wellformatted, incorporates error handling, provides clear output, and adheres to best practices.
[See solution](task5-solution.sh) 

### Task 6: Create a concise and efficient shell script named "/names.sh" that extracts and prints a clear list of usernames and their corresponding primary groups from the "/etc/passwd" file. Ensure the script is well-formatted, adheres to best practices, and includes informative comments for clarity.
[See solution](task6-solution.sh)

### Task 7: Write a shell script "./yes-no.sh".
Additional assumptions:  
- If the argument is 'yes', the script should run the command echo “that's nice”. 
- If the argument is 'no', the script should run the command echo "I am sorry to hear that".
- If the argument is anything else, the script should run the command echo "unknown argument provided"  

[See solution](task7-solution.sh)  
### Task 8: Create a script "search.sh" placed in "/usr/local/bin/" used to find all files in "/usr" that are smaller than 8M and have SUID permission, then place these files in "/root/result/".
[See solution](task8-solution.sh)  
### Task 9: Create a backup script "/etc/scripts/backup.sh" to run every 30 minutes.

[See solution](task9-solution.sh) 

[← Main Page](../README.md)