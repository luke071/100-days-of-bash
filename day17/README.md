# Day 17 [ ] vs [[ ]]
In Bash, both [ ] and [[ ]] can be used to test conditions.

- [ ] is the traditional test syntax used for basic file, string, and numeric comparisons. It is also supported by POSIX-compatible shells.
- [[ ]] is a Bash-specific and safer syntax that provides additional features, such as pattern matching with * and logical operators like && and ||.
- With [ ], string comparison commonly uses =, for example:
```
[ "$STR" = "ok" ]
```
- With [[ ]], == can be used for string comparison and pattern matching:
```
[[ "$STR" == o* ]]
```
- This checks whether the string starts with o.
Multiple conditions can be combined inside [[ ]], for example:
```
[[ -f "$FILE" && -r "$FILE" ]]
```
For Bash scripts, [[ ]] is generally preferred for more complex conditions, while [ ] is useful for simple and portable tests.

## Task
Write a Bash script that demonstrates the differences between [ ] and [[ ]] by testing a file, comparing a string, using pattern matching, and combining conditions with &&.

### Expected Output
Assuming file.txt exists and is readable, and the script is run with ok:
```
[ ] : file exists
[ ] : string is ok

[[ ]] : file exists
[[ ]] : string is ok

[[ ]] : string starts with 'o'

[[ ]] : file exists and is readable
```

[[ ] vs [[ ]]](script.sh)  
[Brackets Comparison](../assets/bash-brackets-comparison.md)  
[← Main Page](../README.md)