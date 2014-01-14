#!/bin/bash 
# HEj

if [ $EUID -ne 0 ]; then
    echo "You need to run this scrip as root soz"
    exit 1
else
    rm /tmpx 2> /dev/null
    echo "You are root removing tmpx"

fi
exit 0
