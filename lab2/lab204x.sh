#!/bin/bash
read -t 5 -p "Vad är din favorit färg" color
color=${color:="röd"}
echo "Vilken var färgen?" $color
exit 0
