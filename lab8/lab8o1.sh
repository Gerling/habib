#!/bin/bash     
# Chapter 8 exercise 1
# listing lines in var/log/syslog by sed -n '$=' /var/log/syslog 
# This is how it went down:
# gerling@Gerling:~$ sudo sed -n '$=' /var/log/syslog
# 359
# gerling@Gerling:~$ sudo sed -i '$ d' /var/log/syslog
# gerling@Gerling:~$ sudo sed -n '$=' /var/log/syslog
# 358
# gerling@Gerling:~$ 

