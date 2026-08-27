# Day 18 Awk

🧠 Remember: AWK → reads lines → splits them into columns → performs operations.  

In other words: AWK = “process data from text for me.”  

## Write a script using the `awk` tool to process data contained in several text files.

Use the following files:

file.txt – containing text data and numbers in three columns,  
log.txt – containing messages, including lines with the text "error",  
file.csv – containing data in CSV format,  
passwd.txt – containing data simulating the `/etc/passwd` file,  
convert.txt – containing text with occurrences of the word "foo",  
lines.txt – containing 10 numbered lines.  

Next, write a script that uses `awk` commands to:

1. Display the first column from the file `file.txt`.
2. Display the first and third columns from the file `file.txt`.
3. Display the first column from the file `passwd.txt`, using `:` as the separator.
4. Display the second column from the file `file.csv`, using `,` as the separator.
5. Display lines from `file.txt` where the third column is greater than 100.
6. Display the line from `passwd.txt` where the first column is equal to `root`.
7. Display all lines from `log.txt` containing the word `error`.
8. Display all lines from `log.txt` that do not contain the word `error`.
9. Calculate the sum of the values ​​in the second column of `file.txt`.
10. Calculate the number of lines in `file.txt`.
11. Display the fifth line from `lines.txt`.
12. Display lines 5 through 10 from `lines.txt`.
13. Display the number of each line along with its content.
14. Replace all occurrences of `foo` with `bar` in the file `convert.txt`.
15. Display the header "Header", then the content of `file.txt`, and finally "Footer".
16. Use the `-v` variable to display lines from `file.txt` where the second column is greater than 10.

[See script](main.sh)  
[Arithmetic Operators](../assets/awk-common-combinations.md)  
[← Main Page](../README.md)