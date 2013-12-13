#!/bin/bash 
clear
echo ""
read -p "What number do you chose as the first one?" tal1
read -p "What number do you choose as the second one?" tal2
let SUMMA="$tal1+$tal2"
let DIFF="$tal1-$tal2"
let KVOT="$tal1/$tal2"
let REST="$tal1%$tal2"              #observera % när det kommer till rest.
let PRODUKT="$tal1*$tal2"
echo $SUMMA
echo $DIFF
echo $KVOT
echo $REST
echo $PRODUKT
echo "Hardcore matte yoyo"
exit 0
