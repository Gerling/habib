#!/bin/bash 
# ska göra ett skript som frågar om personns vikt och längd plus ger en passande kommentar.
# I slutet finns en sammanfattning och en fråga. Blandar if och case vid tips kontakta gärna mig via antingen git/klassrummet eller telefon. 
# King sh1t enjoy :D
clear
echo ""
read -p "How tall are you, answer in cm please? " cm
if [ $cm -gt 190 ];then
    echo "omfg you are a giant, ladies liky"
elif [ $cm -le 180 ];then
    echo "omg u short brah"
else
    echo "So you are $cm , being 180-190 is solid"
fi

read -p "How much do you weight, if I may ask? " high
if [ $high -gt 88 ];then
    echo "omg you are heavy"
elif [ $high -le 70 ];then
    echo "Omg u are like paper"
else 
    echo "$high is pretty standard for being $cm depending on muscles or babyfat"
fi

echo "You are $cm tall and weight is $high"
echo ""
echo -n "Are you happy with the result? [Y|N]"
read response
case $response in
    y|Y) 
        echo "Good never stop - always improve."
        ;;
    
        n|N)
            echo "Go the gym and stop whining about the reflection in the mirror"
            ;;
        *) echo "Just answer please"
            ;;
    esac
echo -n "Do you want to know your BMI? [Y|N]"
read response
case $response in
    y|Y)
        echo "Oki coming up"
    #let PRODUKT="$cm*$cm"
    PRODUKT=$(( $cm * $cm ))
    high=$(( $high * 10000 ))                                           # Lär dig detta , gör om 4,1. Definerar high för att inte få massa decimaler.
    KVOT=$( echo "scale=5;$high/$PRODUKT" | bc )
    echo "Din BMI är: $KVOT"
    ;;

    n|N)
    echo "Be boring then"
    ;;
*) echo "Sorry"
    esac
exit 0
