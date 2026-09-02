# Day 24 Log Analyzer

Write a Bash script called log_analyzer.sh that analyzes a server log file.

The script should accept the path to the log file as its first argument:
```
./log_analyzer.sh server.log
```
## Input file
Example server.log:
```
2026-09-01 08:12:01 INFO user=alice action=login
2026-09-01 08:13:44 ERROR user=bob action=login
2026-09-01 08:15:02 INFO user=alice action=logout
2026-09-01 08:17:31 ERROR user=alice action=payment
2026-09-01 08:18:10 WARNING user=charlie action=login
2026-09-01 08:20:55 ERROR user=bob action=payment
```
Each log entry follows this format:
```
DATE TIME LEVEL user=USER action=ACTION
```
## Requirements
The script should:  

- get the filename from the first argument $1,
- check whether an argument was provided,
- check whether the specified file exists,
- count the total number of log entries,
- count INFO entries,
- count WARNING entries,
- count ERROR entries,
- extract usernames from the log,
- count how many times each user appears,
- display users in alphabetical order,
- extract actions from the log,
- count how many times each action appears,
- find the most frequently used action,
- display the results in the specified format.

## Required tools
Your solution must use the following Bash commands:

- grep
- cut
- awk
- sort
- uniq
- wc  

You must also use the pipe operator.

## Expected output

For the example server.log, the script should produce:
```
Total: 6
INFO: 2
WARNING: 1
ERROR: 3

Users:
alice: 3
bob: 2
charlie: 1

Most common action:
login: 3
```
Users must be displayed in alphabetical order.

## Error Handling
### No argument
```
./log_analyzer.sh
```
Expected:
```
Usage: ./log_analyzer.sh <logfile>
```
### File does not exist
```
./log_analyzer.sh missing.log
```
Expected:
```
Error: file 'missing.log' does not exist
```
The script should exit after detecting an error.

## Bonus — Log Backup

Before analyzing the log, create a backup in .tar.gz format using tar.

The archive name should contain the filename and the current date and time in the following format:
```
YYYY-MM-DD_HH-MM-SS
```
For:
```
./log_analyzer.sh server.log
```
an example backup name would be:
```
server.log-2026-09-02_08-30-15.tar.gz
```
The archive must contain the server.log file.  
After creating the backup, verify that the archive contains the correct file.

[See script](script.sh)  
[← Main Page](../README.md)