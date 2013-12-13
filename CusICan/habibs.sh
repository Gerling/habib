#!/bin/bash 
clear
echo ""
read -p "Please add your height " tal1
read -p "Please tell me your weight " tal2
let KVOT="$tal1/$tal2"
let REST="$tal1%$tal2"
echo "Du är $KVOT gånger längre än din vikt och har $REST kilon till utöver 2 gånger din vikt som är $tal2"
exit 0
