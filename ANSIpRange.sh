#!/bin/bash
#
# USE: ./ANSIpRange.sh {ASN_NUMBER}
#  -Akil
clear
printf "Tool for checking Autonomus System Numbers (ASN)\n\n"
if [ $# -eq 0 ] 
then
    printf "No argument found.\nUSE: \e[4;33m./ANSIpRange.sh {ASN_NUMBER}\e[0m\n\n"
    printf "Provide ASN no: "
    read varASN
    printf "\nChecking IP for \e[1;33m$varASN\e[0m\n\n"
    whois -h whois.radb.net -- "-i origin $varASN" |grep -Eo "([0-9.]+){4}/[0-9]+"
    printf "\n"
else
    printf "Checking IP for \e[1;33m$1\e[0m\n\n"
    whois -h whois.radb.net -- "-i origin $1" |grep -Eo "([0-9.]+){4}/[0-9]+"
    printf "\n"
fi
