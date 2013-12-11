#!/bin/bash
read -p "Says a number from 1 to 10 or I'll kill you!" Number
    echo "He said $Number"
if [ "$Number" -gt 10 ];then
    echo "Y NO LISTEN (IMAGINE MEME)"
else 
    echo "Want cookie?"
fi
if [ "$Number" -le 0 ];then
    echo "U being smart and saying 0"
fi 
