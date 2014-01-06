#!/bin/bash 
# Trying some rehursal just for fun, lol jk cus I have to.
read -p "How old are you? " Age
if [ $Age -gt 19 ];then
    echo "Congratz you can go to systembolaget"

elif [ $Age -eq 18 ];then 
    echo "3.5 beer will make u hammered"

elif [ $Age -lt 18 -a $Age -gt 12 ];then
    echo "U no buying cool stuff"

elif [ $Age -eq 12 ];then 
    echo "omg p12"

elif [ $Age -lt 12 ];then 
    echo "omg chips on fridays"
    
fi
exit 0
