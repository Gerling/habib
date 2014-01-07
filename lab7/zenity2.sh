#!/bin/bash 
# Zenity tryout version 2.
# I'm removing a file with a command but in a GUI interface.
# Script is also telling what it's removing and if it did it with success.
# It's avery short script and abt of slacklevel sorry :)
# King sh1t enjoy

clear
echo ""
var=$(zenity --title="Select a file to remove" --file-selection)
echo "removing $var"
rm -rf $var
# The file that is getting removed is the variabel var. 
# Sanity Checks

if [ ! -e $var ]; then
    echo "It have been succesfully removed"
else 
    echo "It wasn't removed or doesn't exist"
    exit 1
fi 
zenity --info --title="Script Done" --text="The file was removed. \n\n
It was for file $var."

exit 0
