#!/bin/bash

echo "1. First column from file.txt:"
awk '{print $1}' file.txt

echo
echo "2. First and third columns from file.txt:"
awk '{print $1, $3}' file.txt

echo
echo "3. First column from passwd.txt:"
awk -F: '{print $1}' passwd.txt

echo
echo "4. Second column from data.csv:"
awk -F',' '{print $2}' data.csv

echo
echo "5. Lines where the third column is greater than 100:"
awk '$3 > 100' file.txt

echo
echo "6. Line where the first column is root:"
awk '$1 == "root"' passwd.txt

echo
echo "7. Lines containing error:"
awk '/error/ {print}' log.txt

echo
echo "8. Lines not containing error:"
awk '!/error/ {print}' log.txt

echo
echo "9. Sum of the second column:"
awk '{sum += $2} END {print sum}' file.txt

echo
echo "10. Number of lines:"
awk '{count++} END {print count}' file.txt

echo
echo "11. Fifth line:"
awk 'NR==5' lines.txt

echo
echo "12. Lines from 5 to 10:"
awk 'NR>=5 && NR<=10' lines.txt

echo
echo "13. Line number and its content:"
awk '{print NR, $0}' lines.txt

echo
echo "14. Replace foo with bar:"
awk '{gsub("foo","bar"); print}' convert.txt

echo
echo "15. Header, content and footer:"
awk 'BEGIN {print "Header"} {print} END {print "Footer"}' file.txt

echo
echo "16. Lines where the second column is greater than 10:"
awk -v x=10 '$2 > x' file.txt