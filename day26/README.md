# Day 26 Checking host availability

Sequential execution in Bash means executing commands one after another. The next command starts only after the previous command has finished. This is the default way commands are executed in Bash scripts.

Parallel execution means running several commands at the same time, usually by using the & operator, which runs a process in the background. This allows the script to continue without waiting for each command to finish before starting the next one.

The wait command is used to wait for background processes to finish.

## Example:
```
# Sequential execution
command1
command2
command3

# Parallel execution
command1 &
command2 &
command3 &
wait
```
## Task: Scanning the Local Network
Write two Bash scripts that scan a local network and detect active hosts using the ping command.  

The first script should perform the scan sequentially, checking each IP address one after another. The second script should perform the scan in parallel, running multiple ping commands simultaneously using & and waiting for all processes to finish with wait.  

Both scripts should display the IP addresses of active hosts. Finally, compare the execution time of both solutions and briefly explain why the parallel version can be faster than the sequential version.  

[Sequential version](script-1.sh)  
[Parallel version](script-2.sh)  

## Bonus - Nmap
Nmap allows you to quickly detect active hosts and scan a network. It is more powerful and convenient than using ping alone. Combining Nmap with Bash allows you to automate scans and process the results.  
[Bash + Nmap](script-3.sh)  