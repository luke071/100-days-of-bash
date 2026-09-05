# Day 24 Log Analyzer

Create a Bash script named script.sh for analyzing a server log file.

The script must take the path to the log file as its first command-line argument.
```
./script.sh server.log
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
./script.sh
```
Expected output:
```
Usage: ./script.sh <logfile>
```
### File does not exist
```
./script.sh missing.log
```
Expected output:
```
Error: file 'missing.log' does not exist
```
The script should exit after detecting an error.

[See script](script-1.sh)

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

The script should also check whether the tar command was successful. The tar command returns exit code 0 when the backup is created successfully. If tar returns a non-zero exit code, the script should display an error message and exit.

The backup can be created and checked using:

```
if ! tar -czf "$backup" "$file"; then
    echo "Error: could not create backup"
    exit 1
fi
```
The tar command creates the .tar.gz archive. If it is successful, the script continues. If tar fails, the script displays an error message and exits.

The ! reverses the result of the tar command, so the if block runs when tar fails.

[See script](script-2.sh)  
[← Main Page](../README.md)