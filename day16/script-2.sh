#!/bin/bash

echo "Select system: rhel / debian"
read system

case "$system" in
    rhel)
        cmd="useradd"
        echo "RHEL selected - I'm using useradd"
        ;;
    debian)
        cmd="adduser --disabled-password --gecos ''"
        echo "Debian selected - I'm using adduser"
        ;;
    *)
        echo "Unknown system. Select rhel or debian."
        exit 1
        ;;
esac

if [[ ! -f users.txt ]]; then
    echo "Missing users.txt file !"
    exit 1
fi

echo "Adding users from users.txt file"

while read user; do
    [[ -z "$user" ]] && continue
    $cmd "$user"
    echo "Added: $user"
done < users.txt