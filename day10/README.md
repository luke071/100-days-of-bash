# Day 10 Arguments

Command-line arguments allow users to pass information to a Bash script when starting it.

Arguments are written after the script name:
``
./script.sh argument1 argument2
``
Bash provides special variables for accessing these arguments:

$0 – the name of the script.  
$1 – the first argument.  
$2 – the second argument.  
$3 – the third argument, and so on.  

$# – the number of arguments provided.  

Arguments can be stored in variables for easier use:
``
FILE="$1"
USER="$2"
``
The number of arguments can be checked using an if statement:
```
if [ $# -ne 2 ]; then
    echo "Usage: $0 argument1 argument2"
    exit 1
fi
```
The -ne operator means "not equal". This allows the script to verify that the user provided the required number of arguments.

Command-line arguments make scripts more flexible because the same script can be used with different input values.

## Task
Write a Bash script that checks whether the user has provided exactly two arguments. If not, display a message showing the correct usage of the script and terminate its execution.  

### Expected output

When the script is executed with an incorrect number of arguments:
```
$ ./script.sh
Usage: ./script.sh file user
```
When the script is executed with exactly two arguments:
```
$ ./script.sh test.txt john
File: test.txt
User: john
```
The first argument represents the file name, and the second argument represents the user name.

[Show solution](script.sh)  
 [← Main Page](../README.md)