#!/bin/bash 
# Zenity tryout lab1 of 3. 

TIME=$(zenity --entry --title="Timer" --text="Enter a duration for the timer.\n\n")
sleep $TIME

zenity --info --title="Timer Complete" --text="Now the timer is compleate.\n\n Timer was for $TIME."
exit 0
