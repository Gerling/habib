#!/bin/bash 
# Chapter 7 ex 3
# Oliver Gerling
# Scripts point: Helps the user to create a new user. To set a PW it's recommended to user chpasswd.
# Changelog 11:09 :Digging in
# Changelog 11:40 : commenting away the "File" variabel and adding sanity checks- 
# Changelog 11:50 : You can if in a if "sats"
# Changelog 11:55 : Edit a else sentense n the lines 25-35 so if it's not correct it
# goes banans...."
# This is just a general message after using script a few time is that you CLEAN UP.
# CleanUp in my senario was when I edit the passwd file 
# And removing the users I created in my progress in this script, was atleast a dussin..."
# 
#File="$HOME/lab7o3x.txt"

clear
echo ""
read -p "Please say name of the new user " Name
sudo useradd $Name

read -p "Please type a new password " Newpw
read -p "Please type it again " Newpwx

#Sanity checks

if [ "$Newpw" = "$Newpwx" ];then
    echo "$Name:$Newpw | chpasswd "      
    if [ $? -eq 0 ];then
        echo "Correct gj"
    else 
        echo "Incorrect sorry"
        exit 1
    fi  
else 
    echo "Password is not correct"
fi  

exit 0
