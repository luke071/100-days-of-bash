#!/bin/bash

echo "Choose an option:"
echo "1) Start"
echo "2) Stop"
echo "3) Restart"
echo "4) Status"

read option

case "$option" in
    1)
        echo "Starting service"
        ;;
    2)
        echo "Stopping service"
        ;;
    3)
        echo "Restarting service"
        ;;
    4)
        echo "Checking service status"
        ;;
    *)
        echo "Invalid option"
        exit 1
        ;;
esac