#!/bin/bash 
# Lab 4 övning 2 med hjälp av mr T. riktig bror.
# Ny med case så tog 5 år och ca 2 månader. 
echo - n "Do you want to chance kr to dollars[Y|N]" 
read response
case $response in

    [yY] )
    echo "How much?"
    read kr
    Pay=$(bc -l <<< "scale=2; $kr/6")   # Devide swedish kr into dollar
    echo "You will get $Pay"
    ;;

[nN] )
    echo "How much from dollar to kr"
    read dollar
    Pay=$(bc -l <<< "scale=2; $dollar*6") # Take dollars to swedish kr.
    echo "You will get $Pay"d
    ;;
*) echo "Invalid input"
    ;;
    esac
exit 0
