#!/bin/bash
# Definerar och skapara så att recept.txt är detsamma som Fil.
# Finns säkert många snabbare sätt än att skriva 3 stycken if satser # så tipsa gärna om ni vet något sätt. 
Fil=recept.txt

if [ -e $Fil ];then
    echo "recept.txt finns"
else 
    echo "recept.txt finns inte"
fi
if [ -r $Fil ];then
    echo "Den går att läsa"
else 
    echo "jobbigt går inte att läsa"
fi
if [ -w $Fil ];then 
    echo "Den går att skriva"
else
    echo "Den går inte att skriva"
fi
