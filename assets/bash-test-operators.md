# Most Commonly Used Bash Test Operators — with Examples
| Operator | Meaning | Example |
|----------|---------|---------|
| [ -e FILE ] | File or directory exists | [ -e "/etc/passwd" ] |
| [ -f FILE ] | Regular file | [ -f "/etc/hosts" ] |
| [ -d DIR ] | Directory | [ -d "/var/log" ] |
| [ -L FILE ] | Symbolic link | [ -L "/usr/bin/python" ] |
| [ -r FILE ] | File is readable | [ -r "/etc/shadow" ] |
| [ -w FILE ] | File is writable | [ -w "/tmp/test.txt" ] |
| [ -x FILE ] | File is executable | [ -x "/usr/bin/bash" ] |
| [ -s FILE ] | File is not empty | [ -s "data.txt" ] |
| [ -O FILE ] | File owned by current user | [ -O "/tmp/file" ] |
| [ -G FILE ] | File owned by current group | [ -G "/tmp/file" ] |
| [ FILE1 -nt FILE2 ] | FILE1 newer than FILE2 | [ config.new -nt config.old ] |
| [ FILE1 -ot FILE2 ] | FILE1 older than FILE2 | [ backup.tar -ot backup.tar.gz ] |
| [ -z STRING ] | String is empty | [ -z "$USER_INPUT" ] |
| [ -n STRING ] | String is not empty | [ -n "$USERNAME" ] |
| [ STRING = STRING ] | Strings equal | [ "$a" = "$b" ] |
| [ STRING != STRING ] | Strings not equal | [ "$a" != "$b" ] |
| [ STRING \< STRING ] | String less (lexicographically) | [ "$a" \< "$b" ] |
| [ STRING \> STRING ] | String greater (lexicographically) | [ "$a" \> "$b" ] |
| [ n1 -eq n2 ] | Numbers equal | [ 10 -eq 10 ] |
| [ n1 -ne n2 ] | Numbers not equal | [ 5 -ne 3 ] |
| [ n1 -gt n2 ] | Greater than | [ 7 -gt 3 ] |
| [ n1 -ge n2 ] | Greater or equal | [ 7 -ge 7 ] |
| [ n1 -lt n2 ] | Less than | [ 2 -lt 9 ] |
| [ n1 -le n2 ] | Less or equal | [ 2 -le 2 ] |
| [ ! EXPR ] | Negation | [ ! -f "/etc/passwd" ] |
| [ EXPR1 -a EXPR2 ] | Logical AND | [ -f file -a -r file ] |
| [ EXPR1 -o EXPR2 ] | Logical OR | [ -f file -o -d file ] |