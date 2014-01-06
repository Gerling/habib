#!/bin/bash 
# Chapter 6 exercise4
# Use of functions, returns and handling problems.
# No use of \n good to be able without using it.
function Add {
Add=$(($tal1+tal2))
echo "$Add if you add them together"
}

function Sub {
Sub=$(($tal1-tal2))
echo "$Sub if you substract"
}

function Multi {
Multi=$(($tal1*$tal2))
echo "$Multi if you doing multiplication"
}

function Div {
Div=$(($tal1/tal2))
echo "$Div if you are dividing"
}

function Rest {
Rest=$(($tal1%$tal2))
echo "$Rest is the remains of $tal1 / $tal2"
}
    
read -p "Please say 2 numbers! " tal1 tal2 
Add
Sub 
Multi   
Div
Rest 2> /dev/stderr 
