# Day 14 - Bash Test Operators
Bash test operators are used to check conditions in scripts, such as files, strings, and numbers. The [ ] syntax is basic and more portable, while [[ ]] is specific to Bash and provides more features and safer condition checking. For Bash scripts, [[ ]] is generally recommended.
## Task 1: File Test Operators
Write a Bash script that checks whether a file named test.txt exists and is a regular file. Use the -f test operator with [ ]. The script should display an appropriate message depending on the result.
### Expected Output
If the file exists:
```
File exists
```
If the file does not exist:
```
File does not exist
```
[File Test Operators](script-1.sh) 

## Task 2: String Test Operators
Write a Bash script that stores a name in a variable and checks whether the name starts with the letter A. Use an if-else statement and a pattern match to display an appropriate message.

### Expected Output
If yes:
```
Name starts with A
```
If no
```
Name does not start with A
```
[String Test Operators](script-2.sh) 

## Task 3:  Test operators (&&, !)
Write a Bash script that demonstrates different types of conditional tests. The script should check whether a file exists, whether a missing file does not exist, compare a string with a given value, compare two numbers, and check whether a file exists and is readable. Use test conditions with [ ], &&, and !.

Expected result
Assuming that file.txt exists and is readable, and the script is run with the argument ok:

Basic test: Exit status: 0  
Test with &&: file.txt exists   
Test with !: missing.txt does not exist  
String test: STR is ok  
Number test: 4 is less than 16  
Multiple tests: file.txt exists and is readable  
If file.txt does not exist or is not readable, the corresponding messages will not be displayed.  

[Test operators (&&, !)](script-3.sh) 

## Task 4: Combining File, String, and Integer Tests

Write a Bash script that combines file, directory, string, and integer tests using [[ ]] and if statements. The script should also create temporary files and directories and remove them after the tests.

## Expected Output
If all conditions are met:
```
File exists and is readable
Directory exists
String is valid
10 is less than 20
```

[Combining File, String, and Integer Tests](script-4.sh)  
[Most Commonly Used Bash Test Operators](../assets/bash-test-operators.md)  
[← Main Page](../README.md)
