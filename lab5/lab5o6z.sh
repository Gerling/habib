#!/bin/bash 
# Uppgift 6 kap 5

Now=$(date +"%Y-%m-%d-%H.%M")                                           # Definerar datum
Tar="/bin/tar"                                                          # Definerar TAR
File1="$HOME/.bashrc"                                                   # Definerar filer
File2="$HOME/.vimrc"
Logfolderx="$HOME/backup"                                               #Här skapar den en backup mapp
if [ ! -d $Logfolderx ]; then
    mkdir -p $Logfolderx
fi
if [ -e $Logfolderx ]; then
    echo "It's there"
fi  
$Tar -czpf ${Logfolderx}/backup.$Now.tar.gz $File1 $File2 2> /dev/null                # Targettar File1 och File2 ifrån rad 6 & 7
#cp backup.*.tar.gz /home/gerling/backup/
cd $Logfolderx                                                          # går in i backup .kolla defination rad 8
tar -zxvf backup*                                                       # packar upp . 
 
exit 0
