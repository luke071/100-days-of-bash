# Day 17 [ ] vs [[ ]]

Write a script that prompts the user for a text string and a number, then evaluates the provided values ​​using conditional statements.

The script should:

1. Prompt the user for text and store it in the variable `txt`.
2. Prompt the user for a number and store it in the variable `num`.
3. Check using the POSIX test (`[ ]`) whether the text is empty. If so, display an appropriate message.
4. Use the Bash construct (`[[ ]]`) to check if the provided number is greater than 10. Display an appropriate message based on the result.
5. Check if the text is not empty and the number is greater than 0. If both conditions are met, display a message.
6. Check if the text is empty or the number is not greater than 0. If at least one condition is met, display a message.
7. Check if the text is not empty and the number is not equal to 0. If both conditions are met, display a message.

The task requires the use of logical operators `&&`, `||`, and `!`, as well as string and numeric comparisons in Bash.


 [See script](main.sh)  
 [Brackets Comparison](../assets/bash-brackets-comparison.md)  
 [← Main Page](../README.md)