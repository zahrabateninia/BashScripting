#!/bin/bash

if grep "127.0.0.1" /etc/hosts ; then # using grep command to search for the string "127.0.0.1" in the /etc/hosts file
    echo "Everything is ok"
else 
    echo "ERROR! 127.0.0.1 is not in /etc/hosts"
fi

