#!/bin/bash 
# Detta är uppgift 3 för laboration 5. 
# Det som ska göras är: Skriv ett skript som med hjälp av while kontrollerar om filen while.dat finns i din
#hemkatalog. Så länge filen inte finns skall skriptet vänta på den. Öppna en ny terminal
#och skapa filen med kommandot touch while.dat, skriptet skall skriva ut Filen hittades!#när filen skapats. 

    #Changelog 14:40 - Får den att söka och stanna när filen är skapad men får inte möjligheten att se echo medleandet "It's found"
    # Changelog 14:40 - eventuellt skapa i framtiden fråga om en fils namn utan att definera Fil variabeln??? lol tuff.
    # Changelog 14:48 - Byter exit 0 till exit 2 och får echo medelande "It's found" I'm king shit
    # Regards, Gerling

Fil=while.dat
while [ ! -f $Fil ];do     # För att fortsätta söka tills den hittar, för att                        skapa ett loopsystem. ! byter sant mot falskt.    
    if [ -e $Fil ]; then
        echo "It's found" 
    else 
        echo "Searching"
    fi
done
exit 2                  # Använder mig av exit 2 och inte exit 0 och fungerar. 
