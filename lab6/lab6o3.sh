#!/bin/bash 
# Chapter 6 exercise 3
# Fancy starts.
#Staar="*"
#Yo=$(( $Staar * $star )) 
# Fredrik is forcing me to use printf but meeeh. Emmas work contributed with the first function.

function Yo {
until [ $star -lt 0 ];do
    printf "*"
         ((star--))                 # Learn to use this, 
done
}

read -p "How many stars whould you like to list? " star   #Check lune 9-11
    Yo              # funktionen
    printf "\n"
exit 0      
