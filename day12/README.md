# Day 12 - Hard vs. Symbolic Links
A hard link points directly to the file's data, while a symbolic link points to the file's path. Hard links usually cannot link to directories or filesystems, while symbolic links can. In Bash, links can be created using ln and ln -s.
## Task
Create a Bash shell script showing the difference between a hard link and a symbolic link.  
Script assumptions:
 - creates a base file named original.txt containing any text
 - creates a hard link to this file called hard.txt
 - creates a symbolic link to this file called soft.txt
 - displays information about both links using ls -li
 - deletes the original file
 - shows the behavior of both links after deleting the original file

 [See script](main.sh)  
 [← Main Page](../README.md)