#!/bin/bash
clear
echo ""
read -p "What number do you hate?" Tal1
read -p "What number do you love?" Tal2

if [ "$Tal1" -eq "$Tal2" ];then
    echo "It's the same ammount"
else 
    echo "It's not the same number"

fi
if [ "$Tal1" -lt "$Tal2" ];then
    echo "$Tal1 is lower than $Tal2"
else 
    echo "$Tal1 is bigger than $Tal2"
fi
