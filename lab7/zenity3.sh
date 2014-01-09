#!/bin/bash 
zenity --text "Choose your browser" --list --column="Start"\
--column "I don't like any of them so bad script" google-chrome firefox 2> /tmp/browser
VAL=`cat /tmp/browser`
echo "$VAL is your favorite browser."
zenity --info --title="Oliver Gerling is better than you" --text="You smell funny \n\n\n Lauring."

exit 0
