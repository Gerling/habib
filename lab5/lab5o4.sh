#!/bin/bash 
# Utför övning 4 i kapitel 5. Där uppgiften ser ut som följande: Gör ett betygrättarskript! I en fil finns poängen för varje fråga, ett poäng per rad. Skriptet ska räkna ihop poängen och returnera vilket betyg som ska sättas. G=30 VG=48
# Börja med att läraren ska kunna fråga vilket betyg han ska få, inte för att det är svårt att komma ihåg 30 för g och 48 för vg men för att börja komma igång med Skriptandet. Warm up:

    # Changelog :
    # 16:00 - dampar lite. 
    # 16:20 -Det vi gör är att man cattar innehållet ifrån betyg.txt och sedan efter dem poängen /raderna som är i fyllda med 1 är det betyget man får, om dem går över x antal olika gränser får man en matchande output. 
    # Detta är inte bekant för mig och är väldigt rörigt.
    # 16:40 - Lägger till `cat /$HOME/betyg.txt`; do

for lines in `cat /$HOME/betyg.txt`; do   
    Sum=$(( $Sum+$lines ))
done

if [ $Sum -ge 48 -a $Sum -le 60 ];then
        echo "Student got following points; $Sum and it's VG"
    
    elif [ $Sum -ge 30 -a $Sum -le 48 ];then
        echo "Student got the following points: $Sum and it's G"
    
    elif [ $Sum -ge 0 -a $Sum -le 29 ];then 
        echo "Student got the following points: $Sum and it's IG"
    
    elif [ $Sum -gt 60 ];then
        echo "Please type again consider maxpoint on test was 60 so that's not possible"
    fi

exit 0
