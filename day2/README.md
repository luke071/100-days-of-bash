# Day 2 - Colorful Data
Change the text and background colors in the script from day 1. Use the ANSI system colors below.

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

[See script](main.sh)
[← Main Page](../README.md)