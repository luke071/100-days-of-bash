# Day 6 - Searching for Configuration Files
## .conf Files
A common extension for configuration files is .conf, for example:
```
/etc/ssh/sshd_config
/etc/nginx/nginx.conf
```
When searching for configuration files, remember that not all configuration files have the .conf extension.

## Searching in a Specific Directory
We can use the following pattern:
```
/etc/*.conf
```
The asterisk * is a wildcard, which represents any sequence of characters. In this case, /etc/*.conf means files located directly in /etc whose names end with .conf.

Important: this pattern does not search subdirectories.

## Recursive Searching

If we want to find .conf files in subdirectories as well, we can use:
```
find /etc -type f -name "*.conf"
```
The most important parts are:

- find /etc – starts searching from /etc,  
- -type f – limits the results to regular files,  
- -name "*.conf" – searches for files whose names match the *.conf pattern.  

## Task 1

Create a Bash script that uses a for loop to iterate through the following usernames:  

alice bob charlie  

For each username, display its value on the screen.  

Expected output:  
```
alice  
bob  
charlie  
```
[See script](script-1.sh)

## Task 2

Create a Bash script that scans the /etc directory for files ending with .conf.  

The script should:  

Search for .conf files directly inside /etc.  
Display the path of each found file.  
Display a message when the scan is complete.  

Expected output example:  
```
[*] scanning /etc for .conf files
[+] found: /etc/somefile.conf
[+] found: /etc/example.conf
[*] scan complete.
```
[See script](script-2.sh)

## Task 3

Create a Bash script that recursively scans the /etc directory for files ending with .conf.  

The script should:   

Search /etc and all of its subdirectories.  
Find only regular files with the .conf extension.  
Display the path of each found file.  
Display a message when the scan is complete.  

Expected output example:  
```
[*] scanning /etc recursively for .conf files
[+] found: /etc/example.conf
[+] found: /etc/subdirectory/example.conf
[*] scan complete.
```

[See script](script-3.sh)

[← Main Page](../README.md)