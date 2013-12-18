#!/bin/bash 
# Chapter 6 exercise 4
# This one is alot with functions and using the amazing \n for a new line, also getting used to printf instead of echo.This can be done alot quicker but getting used to funcitons. Feedback pl0x ;)

function Add {
    Add=$[ $tal1+$tal2 ]
    printf "$Add \n"
}

function Multi {
    Multi=$[ $tal1*$tal2 ]
    printf "$Multi \n"
}

function Sub {
    Sub=$[ $tal1-$tal2 ]
    printf "$Sub \n"
}

function Div {
    Div=$[ $tal1/$tal2 ]
    printf "$Div \n"
}

function Rest {
    Rest=$[ $tal1%$tal2 ]
    printf "$Rest \n"
}

read -p "please say the first number " tal1
read -p "please say the second number" tal2
#Sum=$(( tal1+tal2 ))                       # Replaced by "Add"
#Pro=$(( tal1*tal2 ))                       # Replaced by   Multi"
#Diff=$(( tal1-tal2 ))                      # Replaced by Sub Functionen
#Kvot=$(( tal1/tal2 ))                      #Replaced by Functionen  Div
#Rest=$(( tal1%tal2 )) 2> /dev/stderr        # Check line 39-42. 
echo "First +, *, -, /, rest"
Add
Multi
Sub
Div 
Rest 2> /dev/stderr                     # Why /dev/stderr? To mindfuck you!
# printf "$Rest is rest\n"
#if [ $Rest -gt 0 ];then #2> /dev/stderr      # Not working probably so won't be using the /dev/stderr command 
 #   echo "It got $Rest leftovers"
# fi  
exit 0
