#!/bin/bash

echo "1. Find 'error' ignoring case:"
grep -i "error" log.txt

echo
echo "2. Find lines that do not contain 'error':"
grep -v "error" log.txt

echo
echo "3. Find 'error' or 'warning' ignoring case:"
grep -Ei "error|warning" log.txt

echo
echo "4. Find 'error' ignoring case and show line numbers:"
grep -in "error" log.txt

echo
echo "5. Find lines that do not contain 'error' ignoring case:"
grep -iv "error" log.txt

echo
echo "6. Find the exact word 'fail':"
grep -w "fail" log.txt

echo
echo "7. Find 'error' and show line numbers:"
grep -n "error" log.txt

echo
echo "8. Count lines containing 'warning':"
grep -c "warning" log.txt

echo
echo "9. Find lines starting with a number:"
grep -E "^[0-9]" file.txt

echo
echo "10. Extract IPv4 addresses:"
grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" log.txt

echo
echo "11. Check if the file contains exactly 'OK':"
grep -qx "OK" status.txt

echo
echo "12. Check if 'done' exists ignoring case:"
grep -iq "done" output.txt

echo
echo "13. Find Gmail addresses:"
grep 'gmail' users.txt

echo
echo "14. Find lines that do not contain @:"
grep -v '@' users.txt

echo
echo "15. Find lines ending with .com:"
grep '\.com$' users.txt
