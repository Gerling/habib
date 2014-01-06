#!/bin/bash 
# Chapter 6 exercise 1
# Oliver Gerling

if [ $# -eq 2 ]; then
    echo "First argument: $1"
    echo "Second argument: $2"
else
    echo "$0 needs 2 arguments to start"
    exit 1
fi  
exit 0
