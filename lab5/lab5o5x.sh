#!/bin/bash 
# Kapitel 5 uppgift 5. 
# Det som ska utföras är: argumenten ska läsas in, filerna ska kontrolleras om dem är läs och skrivbara och om dem är det sla dem zippas ihop
# föratt få unika filnamn ska dem få datum, filerna ska sparas i katalog tag.gz i hemkatalogen. 
# Tyvär inget changelog , var för frusterad och glömde bort men generella tips när du utför övning är att inte gå helt banans direkt för det är väldigt mycket redigering av små saker. men definer datum /bin/tar och $HOME som någon passande variabel för annars kommer det vara rörigt, ha passande namn. Rätt frusterande laboration men fråga viktor vid funderingar och sedan experimentera lite utanför ramen och vidga skillsen.
#       Regards,
#               Gerling


Now=$(date +"%m-%d-%Y-%H.%M")
Tar="/bin/tar"
Logfolder="$HOME"                                    # Skapar katalogen i användarens hemkatalog, observera ! för att skapa om den inte finns.
if [ ! -d $Logfolder ]; then
    mkdir -p $Logfolder
fi 

timeStamp() {                                                               # Datum
    while read line; do
            echo "${Now}: ${File}" >> $LOGFOLDER/
        done
    };

read -p "What is the name of the file you want to backup? " File            #Fråga

if [ ! -w $File ]; then                                                         # if sats
    echo "Cannot write to $File or $File does not exist" > /dev/stderr  
    exit 2                                                                  # för att lista fel medelanden
else
    echo  "It can write to $File"

fi     
if [ ! -r $File ]; then                                                     # if sats
    echo "Can't read this" > /dev/stderr    
    exit 2                                                                  # För att lista fel medelanden.
else
    echo "Can read this $File "
fi      
$Tar -czpf ${Logfolder}/$File.tar.gz $File                       # c=create f=file z=gzipi p=permissions. skapar tar filen. observer  {{ och annat skoj. 
exit 0
