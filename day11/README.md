# Day 11 Command substitution + Exit Status

Command Substitution

Command substitution allows you to store the output of a command in a variable.

The basic syntax is:
```
variable=$(command)
```
For example:
```
status=$(some_command)
```
The command is executed, and its output is stored in the variable. The value can then be used like any other variable.

Exit Status

Every command in Bash returns an exit status after it finishes.

0 – the command completed successfully.
Non-zero value – an error or another unsuccessful result occurred.

The exit status of the last executed command is available through:

$?

Exit status can also be checked directly with an if statement:
```
if some_command; then
    echo "Success"
else
    echo "Failure"
fi
```
Bash executes the then block when the command returns 0. If the command returns a non-zero status, the else block is executed.

## Task

The script should:

Use command substitution to store the service status in a variable.
Display the current service status.
Check the command's exit status using an if statement.
Display whether the SSH service is running or not running.

### Expected output when the service is running:
```
Service status: active
sshd is running
```
### Expected output when the service is not running:
```
Service status: inactive
sshd is not running
```
[See script](script.sh)  
[← Main Page](../README.md)