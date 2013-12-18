#!/bin/bash 
# Chapter 6 exercise 2
# EUID och rm.

if [ $EUID -ne 0 ];then
   rm -rf var/tmp/
    echo "We are root and removing tmp"
else
    echo "You need to run this script as root, so u mad? "
    exit 1
fi
exit 0

