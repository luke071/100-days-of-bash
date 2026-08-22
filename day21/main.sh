#!/bin/bash

sed 's/foo/bar/' file.txt
sed 's/foo/bar/g' file.txt
sed -i 's/foo/bar/g' file.txt
sed '/^#/d' config.txt
sed '/error/d' log.txt
sed -n '5p' file.txt
sed -n '5,10p' file.txt
sed '1,3d' file.txt
