#!/bin/bash

# Command substitution: store the command output in the variable
status=$(systemctl is-active sshd)

echo "Service status: $status"

# if checks the exit status of the command:
# 0 = success (sshd is running)
# non-zero = failure (sshd is not running)
if systemctl is-active --quiet sshd; then
    echo "sshd is running"
else
    echo "sshd is not running"
fi