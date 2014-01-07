#!/bin/bash 
# Chapter 7 ex 2 .
# Define some variables. 
# Changelog monday:
# Changelog 20:10 Not sure 100 % what I'm doing. 
# Changelog 20:10 Watching JB's script and I understand some parts but still mistery 
# Changelog 20:11 Pushing up the work and will go eat cookies and milk...
# Changelog 09:45 Tsueday being awesome
# Changelog 10:35 You can probablt set static values for the subnet and rest of the values but
# I'm not doing that, giving the user to change it frequently and easier to modify
#
# Got advice to use alot of functions and using dialogs to type everything in but prefer
# the clean terminal typing instead of the antic blue screens. Everything saves into file dhcp.conf 
# at the end I'm printing everything and observe the ; and \n that makes the 
# users typing easier.

# This is probably a noob version of how it should be done but hey I'm new to this..."
# As the scripts starts with, enjoy my shit yo"

File="$HOME/dhcp.conf"

#function dialog {
#dialog --backtitle "dhcp conf"


#dialog --backtitle "Subnet and netmask"
      #  --menu "Say subnet and netmask" >> $File 

#dialog --backtitle "Range"
       # --menu "Say range plox" >> $File

clear
echo "Enjoy ma shit yo :D"
read -p "Please tell subnet " Subnet > $File 

read -p "Please tell me the netmask" Netmask > $File

read -p "Please say the ip range, first where to start. Then a space and then the limit " Range >> $File  

read -p "Enter the DNS servers from the network please, more if you like " Nameservers >> $File    

read -p "Enter the default router " Router >> $File   

#dialog --backtitle "Dhcp conf generator" \
 #       --menu "Chose DDNS update mode" 10 50 2 \
  #      ad-hoc "AD-HOC" none "NONE" 2> /tmp/randompoop
   #     IP=`cat /tmp/randompoop`
#Style

read -p "Enter the ddns-update-style" Ddns >> $File

read -p "Enter default lease time in s " DefaultLease >> $File

read -p "Enter max lease time in s " MaxLease >> $File

clear
echo "$File"

printf "Subnet $Subnet Netmask $Netmask{\n"
printf "range $Range;\n"
printf "option domain-name-servers $Nameservers;\n"
printf "option routers $Router;\n"
printf "ddns-update-style $Ddns;\n"
printf "default-lease-time(s) $DefaultLease;\n"
printf "dax-lease-time (s) $MaxLease;\n}\n"

# Observ the ; after each so I don't have to do it.. and the text before the variabel 
# from the question. 
exit 0
