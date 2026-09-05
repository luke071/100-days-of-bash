# Day 4 - File Existence

In Bash, we can check if a file or directory exists using the -e test operator.

In this script, the user provides a file or directory as a command-line argument:
```
./script.sh filename.txt
```
The first argument is stored in the variable:
```
FILE="$1"
```
Before checking the file, the script verifies whether an argument was provided:
```
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi
```
$# represents the number of arguments passed to the script. If it is equal to 0, no file was provided.

The main existence check is:
```
if [ -e "$FILE" ]; then
    echo "File exists: $FILE"
else
    echo "File does not exist: $FILE"
    exit 2
fi
```
The -e operator checks whether the specified path exists. It works for both files and directories.

If the path exists, the script performs additional checks:

-f checks if the path is a regular file.
-d checks if the path is a directory.
-r checks if the file is readable.
-w checks if the file is writable.
-x checks if the file is executable.

Each check uses an if statement:
```
if [ -f "$FILE" ]; then
    echo "Type: regular file"
fi
```
The else part is executed when the condition is false.

The script also uses exit to terminate with a specific status:
```
exit 1
```
means that no argument was provided, while:
```
exit 2
```
means that the specified file or directory does not exist.

Finally, $? contains the exit status of the most recently executed command.  

## Task

The script should:  

- Check if an argument was provided. If not, display a usage message and exit with status 1.  
- Store the first argument in a variable.  
- Check if the specified path exists.  
- Determine whether the path is a regular file or a directory.  
- Check whether the path is readable, writable, and executable.  
- Display an appropriate message for each check.  
- If the path does not exist, display an error message and exit with status 2.  
- Display the exit status at the end of the script.  

Example usage:  
```
./script.sh filename.txt  
```
Expected output example:  
```
File exists: filename.txt  
Type: regular file  
Readable: YES  
Writable: YES  
Executable: NO  
Exit status: 0  
```
[Show solution](script.sh)  
[← Main Page](../README.md)