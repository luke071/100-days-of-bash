## Troubleshooting
# Bash Troubleshooting

If your Bash script is not working as expected, go through the following steps.

## 1. Does the file exist?

Check whether `script.sh` exists in the current directory:

```bash
ls -l script.sh
```
## 2. Am I in the correct directory?
```
pwd
```
## 3. Is Bash available?
```
which bash
```
## 4. Is the first line correct?
```
head -n 1 script.sh
```
## 5. Does the script have execute permission?
```
chmod +x script.sh
```
## 6. Is the syntax correct?
```
bash -n script.sh
```
## 7. Run the script normally
```
./script.sh
```
## 8. If the problem persists — use debug mode
```
bash -x script.sh
```
[Day 1 Basics of Text Formatting in Bash](./README.md)  