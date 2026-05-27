# Day 1 - Basics of Text Formatting in Bash
## Key Concepts
### Quoting

'...' nothing is interpreted  
```bash
echo '==== SYSTEM INFORMATION ===='
```
"..." interpretation of variables and commands
```bash
CMD='hostname'
echo "System hostname: $($CMD)"
```
Bash interprets ! as history expansion:  
![Server photo](/assets/day1-1.png)  
Solution:
```bash
echo '!Hello World'
```
### Tabs
\t 
```bash
echo -e "\tSystem memory usage:"
```
### Newlines 
\n 
```bash
echo -e "\nDisk space usage:"
```

### printf

%-20s → column 20 characters wide, left-aligned  

%-30s → column width 30 characters  

\n → new line

[See script](main.sh)
[← Main Page](../README.md)