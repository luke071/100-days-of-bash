# Day 20 🔎 Grep 

🧠 Remember: GREP → searches text → looks for a matching pattern → displays matching lines.  
In other words: GREP = “find this in the text for me.”  

## Write a script that uses the `grep` command to search for, filter, and count specific information in text files.

Use the following files:

log.txt – a file containing system messages, including the words "error", "warning", and "fail",  
file.txt – a file containing data, including lines starting with digits,  
status.txt – a file containing status information, including a line reading simply "OK",  
output.txt – a file containing messages, including the word "done",  
users.txt – a file containing email addresses and other user data.  

Next, write a script that uses the `grep` command to:

1. Search `log.txt` for all lines containing the word "error", ignoring case.  
2. Display all lines from `log.txt` that do not contain the word "error".  
3. Search `log.txt` for lines containing "error" or "warning", ignoring case.  
4. Search for the word "error" in `log.txt` (case-insensitive) and display the line numbers of the matches.  
5. Display lines from `log.txt` that do not contain the word "error", ignoring case.  
6. Search `log.txt` for the whole word "fail".  
7. Search `log.txt` for the word "error" and display the line numbers of the matches.  
8. Count how many lines in `log.txt` contain the word "warning".  
9. Display lines from `file.txt` that start with a digit.  
10. Extract IPv4 addresses in the format `xxx.xxx.xxx.xxx` from `log.txt`.  
11. Check if `status.txt` contains exactly one line equal to "OK".  
12. Check if the word "done" appears in `output.txt`, ignoring case.  
13. Search `users.txt` for lines containing the text "gmail".  
14. Display lines from `users.txt` that do not contain the "@" character.  
15. Display lines from `users.txt` that end with ".com".  

The task requires using various `grep` options—such as `-i`, `-v`, `-E`, `-n`, `-c`, `-w`, `-o`, and `-q`—as well as regular expressions and the anchors `^` and `$`.  
[See script](main.sh)  
[grep](../assets/grep-common-combinations.md)  
[← Main Page](../README.md)