#!/bin/bash

grep -i "error" log.txt
grep -v "error" log.txt
grep -Ei "error|warning" log.txt
grep -in "error" log.txt
grep -iv "error" log.txt
grep -w "fail" log.txt
grep -n "error" log.txt
grep -c "warning" log.txt
grep -E "^[0-9]" file.txt
grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" log.txt
grep -qx "OK" status.txt
grep -iq "done" output.txt
grep 'gmail' users.txt
grep -v '@' users.txt
grep '\.com$' users.txt
