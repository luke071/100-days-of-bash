#!/bin/bash

FILE="file.txt"
DIR="dir"
STR="$1"
A=4
B=16

echo "--- Files and directories ---"
[ -e "$FILE" ] && echo "-e  : $FILE exists"
[ -f "$FILE" ] && echo "-f  : $FILE is a regular file"
[ -d "$DIR" ]  && echo "-d  : $DIR is a directory"

echo "--- Permissions ---"
[ -r "$FILE" ] && echo "-r  : readable"
[ -w "$FILE" ] && echo "-w  : writable"
[ -x "$FILE" ] && echo "-x  : executable"

echo "--- Strings ---"
[ -z "$STR" ] && echo "-z  : empty string"
[ -n "$STR" ] && echo "-n  : non-empty string"
[ "$STR" = "ok" ] && echo "=   : STR = ok"
[ "$STR" != "ok" ] && echo "!=  : STR != ok"

echo "--- Numbers ---"
[ $A -eq $B ] && echo "-eq : A = B"
[ $A -lt $B ] && echo "-lt : A < B"
[ $B -gt $A ] && echo "-gt : B > A"

echo "--- Logic ---"
[ ! -f "missing.txt" ] && echo "!   : .txt does not exist"
[ -f "$FILE" -a -r "$FILE" ] && echo "-a  : the file exists and is readable"
[ -f "$FILE" -o -d "$DIR" ] && echo "-o  : file or directory exists"