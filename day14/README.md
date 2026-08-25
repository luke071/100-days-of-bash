# Day 14 - Bash Test Operators

Define the variables:  
FILE="file.txt" – filename,  
DIR="dir" – directory name,  
STR="$1" – value taken as the script's first argument,  
A=4 and B=16 – two numbers.  
  
The script should check for the existence of the file and directory using the following operators:  
-e – checks if the item exists,  
-f – checks if it is a regular file,  
-d – checks if it is a directory.  
  
Check file permissions using:  
-r – the file is readable,  
-w – the file is writable,  
-x – the file is executable.  
  
Check the properties of the string stored in variable STR:  
-z – the string is empty,  
-n – the string is not empty,  
= – compare two strings,  
!= – check if the strings are different.  
  
Perform numerical comparisons of variables A and B using the following operators:  
-eq – equality,  
-lt – less than,  
-gt – greater than.  
  
Demonstrate the logical operators:  
! – condition negation,  
-a – logical "AND",  
-o – logical "OR".  
Display an appropriate message indicating the test result for each check.  

[See script](main.sh)  
[Most Commonly Used Bash Test Operators](../assets/bash-test-operators.md)  
[← Main Page](../README.md)
