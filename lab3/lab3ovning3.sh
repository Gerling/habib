#!/bin/bash
clear
echo ""
read -p "Tell a number between 1 to 10 or I'll cut you?" Tal1
echo "You choose $Tal1"
if [ "$Tal1" -gt 10 ];then
    echo "U no listen, me kill you"
else 
    echo "Omg listening, dafug happends o.O"
fi
if [ "$Tal1" -eq 0 ];then
    echo "U trying to be smart huh"
fi
if [ "$Tal1" -eq 69 ];then
    echo "Ohh you dirty boi"
else
    echo "Me no like you ;D"
fi
exit 0
