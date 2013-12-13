#!/bin/bash
clear
echo ""
Fil="$1"
if [ -d "$Fil" ];then
    echo "It's a directory"
fi
if [ -L "$Fil" ];then
    echo "It's a link faggot"
fi
if [ -f "$Fil" ];then
    echo "It's a normal file"
fi
if [ -b "$Fil" ];then
    echo "It's a blockdevice brah, chill the fuck out"
fi
echo "JAGERBOMB BOOM THAT SHIZ BRAH"
exit 0
