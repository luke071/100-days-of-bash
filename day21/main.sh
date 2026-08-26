#!/bin/bash

echo "1. Replace the first occurrence of foo with bar:"
sed 's/foo/bar/' file.txt

echo
echo "2. Replace all occurrences of foo with bar:"
sed 's/foo/bar/g' file.txt

echo
echo "3. Replace all occurrences of foo with bar and save changes:"
sed -i 's/foo/bar/g' file.txt

echo
echo "4. Remove lines starting with #:"
sed '/^#/d' config.txt

echo
echo "5. Remove lines containing error:"
sed '/error/d' log.txt

echo
echo "6. Display line 5:"
sed -n '5p' file.txt

echo
echo "7. Display lines 5 to 10:"
sed -n '5,10p' file.txt

echo
echo "8. Delete lines 1 to 3:"
sed '1,3d' file.txt
