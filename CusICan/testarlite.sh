#!/bin/bash 
clear
(
while [ $ != 'x' ]
do
    echo "Welcome to calculator (x to quit)"
    echo "Enter the first operand: "
    read value1
    echo "Enter an operator (+, -, *, /): "
    read operator
    echo "Enter the second operand: "
    read value2
    if [ " $ operator " = " + " ] ; then
        answer=$(echo "scale=2;value1+value2" |bc);
    elif [ " $ operator " = " - " ] ; then
        answer=$(echo " scale=2;value1-value2" |bc);
    elif [ " $ operator " = " / " ] ; then
        answer=$(echo "scale=2;value1/value2" |bc);
    elif [ " $ operator " = " * " ] ; then
        answer=$(echo "scale=2;value1*value2" |bc);
    elif [ " $ operator " = " % " ] ; then
        answer=$(echo "scale=2;value1%value2" |bc);
    fi
    echo "Answer: $value1 $operator $value2 = $answer";
done
)
exit 0
