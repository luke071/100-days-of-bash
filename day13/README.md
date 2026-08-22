# Day 13 - Pipelines and Redirects

Write a bash script that uses pipes and redirections in a practical way.

[See script](main.sh)  


## Redirects

Each process in Linux has three streams:

- stdin - input, usually keyboard

- stdout — normal program output, e.g., command output

- stderr - errors and warnings

![Redirects](/assets/day8.png)  

Redirections in Bash allow you to send standard output to files or to each other.

stdout to file:
```bash
command > file.txt
```
stderr to file:
```bash
command 2> errors.txt
```
stdout and stderr together:
```bash
command > all.txt 2>&1
```
ignoring errors:
```bash
command 2>/dev/null
```

## Pipelines
Pipelines are a mechanism for combining commands so that the output of one is the input to the next.
```bash
cat /etc/passwd \
  | cut -d: -f1,7 \
  | grep bash \
  | sort \
  | uniq \
  >> "$LOG"
```
Explanation:
- cat /etc/passwd — downloads the entire file with the user list

- cut -d: -f1,7 — removes the username and shell

- grep bash — filters only those entries that use /bin/bash

- sort — sorts results alphabetically

- uniq — removes duplicates

- '>> "$LOG"' — appends the result to the log file

 [← Main Page](../README.md)