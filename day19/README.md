# Day 19 Cut

🧠 Remember: CUT → selects parts of text → cuts specific columns or characters → displays the result.  
In other words: CUT = “cut this out of the text for me.”  

## Write a script that uses the `cut` command to extract specific columns and characters from various text files.

Use the following files:

file.csv – a file containing data in CSV format, where the comma (`,`) is the separator,  
file.txt – a text file containing data separated by spaces and semicolons,  
file.tsv – a file containing data separated by tabs,  
passwd.txt – a file containing data simulating `/etc/passwd`.  

Next, write a script that uses the `cut` command to:

1. Display the first column from the file `data.csv`.  
2. Display the first and third columns from the file `data.csv`.  
3. Display columns 1 through 4 from the file `data.csv`.  
4. Display the first column from the file `passwd.txt`, using `:` as the delimiter.  
5. Display the first, third, and seventh columns from the file `passwd.txt`.  
6. Display characters 1 through 5 from each line of the file `file.txt`.  
7. Display characters from position 5 to the end of each line of the file `file.txt`.  
8. Display the first 10 characters of each line of the file `file.txt`.  
9. Display the first and third columns from the file `file.tsv`.  
10. Display all columns from `data.csv` except the second one.  
11. Display columns 2 through 4 from the file `file.txt`, using a space as the delimiter.  
12. Display the first column from the file `file.txt`, using a semicolon (`;`) as the delimiter.  
13. Display the second column from `data.csv`, skipping lines that do not contain the delimiter.  

The task requires using `cut` command options and parameters such as `-d`, `-f`, `-c`, `--complement`, and `-s`.

[See script](main.sh)  
[cut](../assets/cut-common-combinations.md)  
[← Main Page](../README.md)