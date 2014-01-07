#!/bin/bash 
dialog --menu "Choose your browser" 10 60 3 google-chrome "Browser chrome" firefox "Browser firefox" iceweasel "Browser iceweasel" 2> /tmp/browser
VAL=`cat /tmp/browser`
$VAL
exit 0
