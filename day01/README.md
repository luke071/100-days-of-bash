# Day 1 - Basics of Text Formatting in Bash
## Key Concepts
```
#!/bin/bash
```
At the beginning of a Bash script, we usually add #!/bin/bash. It tells the system that the script should be executed using the Bash shell.
### Quoting

'...' nothing is interpreted  
```bash
echo '==== SYSTEM INFORMATION ===='
```
"..." interpretation of variables and commands
```bash
CMD='hostname'
echo "System hostname: $($CMD)"
```
Bash interprets ! as history expansion:  
![Server photo](/assets/day1-1.png)  
Solution:
```bash
echo '!Hello World'
```
### Tabs
\t 
```bash
echo -e "\tSystem memory usage:"
```
### Newlines 
\n 
```bash
echo -e "\nDisk space usage:"
```

### printf

%-20s → column 20 characters wide, left-aligned  

%-30s → column width 30 characters  

\n → new line

## Task

The aim of the task is to write a simple Bash script that displays basic information about a Linux system.

While completing the task, you will learn how to:  

- create a Bash script,
- run a script,
- use variables,
- execute system commands,
- display information using echo and printf,
- use basic Linux commands such as hostname, uptime, free, df, and uname.

## How to Run the Script
1. Create a file, e.g. script.sh.
2. Add the Bash code to the file.
3. Make the script executable:
```
chmod +x script.sh
```
4. Run the script:
```
./script.sh
```
[Show solution](script.sh)

## Troubleshooting
[Troubleshooting](troubleshooting.md)

[← Main Page](../README.md)