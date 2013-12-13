#!/bin/bash
read -p "Vilket tal älskar emma" Tal1
read -p "Vilket tal hatar oliver" Tal2
if [ "$Tal1" -eq "$Tal2" ];then
    echo "$Tal1 är lika med $Tal2"
else 
    echo "$Tal1 är inte lika med $Tal2"
fi
if  [ "$Tal1" -lt "$Tal2" ];then
    echo "$Tal1 är mindre än $Tal2"
else
    echo "$Tal1 är större än $Tal2"
fi
