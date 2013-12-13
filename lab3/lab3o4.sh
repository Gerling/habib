#!/bin/bash
Fil="$1"
# Kollar om det är en block fil, vanliga fil eller om det är en katalog eller #  en länk
# kolla .bashrc så du inte har några korkade bash aliases som jag hade... glöm  # ej att source .bashrc + starta om alla terminaler (funkade för mig). 

if [ -b $Fil ];then
    echo "$Fil is a block"
elif [ -d $Fil ];then
    echo "$Fil is a directory"
elif [ -f $Fil ];then 
    echo "$Fil is a regular file"
elif [ -L $Fil ];then
    echo "$Fil is a link"
else
    echo "$Fil is something I don't recon"
fi
exit 0
