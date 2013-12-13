#!/bin/bash
clear
echo ""
Fil=recept.txt
if [ -e "$Fil" ];then
    echo "$Fil finns"
else
    echo "$Fil finns inte"
fi
if [ -r "$Fil" ];then
    echo "omg it can read it"
else
    echo "I can't read that"
fi
if [ -w "$Fil" ];then
    echo "It's writeable"
else
    echo "It's not writeable"
fi
exit 0
