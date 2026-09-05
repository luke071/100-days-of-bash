# Day 2 - Colorful Data

Bash allows you to add colors to text and backgrounds using **ANSI escape codes**. The syntax `\e[<code>m` sets a color, while `\e[0m` resets the formatting.

Text colors use codes `31–36`, while background colors use `40–47`. This can make scripts easier to read by highlighting headers, messages, and important information.


Basic text colors:
```bash
echo -e "\e[31mRed\e[0m"
echo -e "\e[32mGreen\e[0m"
echo -e "\e[33mYellow\e[0m"
echo -e "\e[34mBlue\e[0m"
echo -e "\e[35mMagenta\e[0m"
echo -e "\e[36mCyan\e[0m"
echo -e "\e[0mReset"
```
![text](/assets/day2-1.png)  

Basic background colors:
```bash
echo -e "\e[41mRed background\e[0m"
echo -e "\e[42mGreen background\e[0m"
echo -e "\e[43mYellow background\e[0m"
echo -e "\e[44mBlue background\e[0m"
echo -e "\e[45mMagenta background\e[0m"
echo -e "\e[46mCyan background\e[0m"
echo -e "\e[47mWhite background\e[0m"
echo -e "\e[40mBlack background\e[0m"
```
![background](/assets/day2-2.png)  

## Task

Create a Bash script script.sh that displays basic system information using colored output.

The script should display:

- system hostname,
- system uptime,
- memory usage (free -h),
- disk usage (df -h),
- kernel version (uname -r).
Use ANSI escape codes to add colors and format the output into a readable system information report.


[Show solution](script.sh)  
[← Main Page](../README.md)