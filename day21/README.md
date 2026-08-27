# Day 21 📝 Sed

🧠 Remember: SED → reads text → searches for patterns → modifies or removes parts.  
In other words: SED = “change the text for me.”  

## Write a script that uses the `sed` command to modify, delete, and display selected lines from text files.

Use the following files:

file.txt – a file containing text that includes the word "foo" and at least 10 lines of data,  
config.txt – a configuration file containing lines that start with the `#` character,  
log.txt – a file containing messages, including lines that contain the word "error".  

Next, write a script that uses the `sed` command to:

1. Replace the first occurrence of the word "foo" with "bar" in each line of `file.txt`.  
2. Replace all occurrences of the word "foo" with "bar" in each line of `file.txt`.  
3. Replace all occurrences of "foo" with "bar" and save the changes directly to `file.txt` using the `-i` option.  
4. Remove all lines starting with the `#` character from `config.txt`.  
5. Remove all lines containing the word "error" from `log.txt`.  
6. Display only the 5th line of `file.txt`.  
7. Display lines 5 through 10 (inclusive) of `file.txt`.  
8. Remove lines 1 through 3 from `file.txt` and display the remaining content without modifying the original file.  

The task requires using basic `sed` syntax, the `s/pattern/replacement/` substitution, the `g` flag, the `-i` option, line deletion via `d`, line number ranges, and the `-n` option combined with the `p` command. The command using the `-i` option permanently alters the contents of `file.txt`.  

[See script](main.sh)  
[← Main Page](../README.md)