#!/bin/bash

check_file() {

    if [ -f "$1" ]; then
        echo "$1 exists"
    fi

}

check_file "$1"