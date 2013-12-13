#!/bin/bash 
clear 
echo ""
echo -n "Do you want to change kr to us dollars? [Y|N]"
read response
case $response in
    y|Y)
        echo "How much"
        read kr
        Pay=$(bc -l <<< "scale=2; $kr/6")
        echo "You will get $Pay"
        ;;

    N|n)
        echo "How many dollars whould you like to convert to kr?"
        read dollar 
        Pay=$(bc -l <<< "scale=2; $dollar*6")
        echo "You will get $Pay"
        ;;
    *) echo "Sorry thatis not a valid input, please try again"
        ;;
esac
exit 0
