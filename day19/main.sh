#!/bin/bash

echo "1. First column from data.csv:"
cut -d',' -f1 data.csv

echo
echo "2. First and third columns from data.csv:"
cut -d',' -f1,3 data.csv

echo
echo "3. Columns 1 to 4 from data.csv:"
cut -d',' -f1-4 data.csv

echo
echo "4. First column from passwd.txt:"
cut -d':' -f1 passwd.txt

echo
echo "5. First, third and seventh columns from passwd.txt:"
cut -d':' -f1,3,7 passwd.txt

echo
echo "6. Characters 1 to 5 from file.txt:"
cut -c1-5 file.txt

echo
echo "7. Characters from 5 to the end from file.txt:"
cut -c5- file.txt

echo
echo "8. First 10 characters from file.txt:"
cut -c-10 file.txt

echo
echo "9. First and third columns from file.tsv:"
cut -f1,3 file.tsv

echo
echo "10. All columns except the second from data.csv:"
cut --complement -d',' -f2 data.csv

echo
echo "11. Columns 2 to 4 from file.txt:"
cut -d' ' -f2-4 file.txt

echo
echo "12. First column from semicolon-separated lines:"
cut -d';' -f1 file.txt

echo
echo "13. Second column from data.csv, ignoring lines without delimiter:"
cut -s -d',' -f2 data.csv