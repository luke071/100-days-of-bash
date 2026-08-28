# Day 7 Find + -Exec

-exec in the find command is used to execute a specified command on each found file or directory.  

{} – represents the found item.  
\; – marks the end of the command.  

## Task

Write a Bash script that searches the /var/log directory for all regular files with the .log extension and displays their full paths using the find command and the -exec option.  

Expected output:  

Log files:  
```
/var/log/example.log
/var/log/app/error.log
/var/log/system.log 
```
 [See script](script.sh)  
 [← Main Page](../README.md)