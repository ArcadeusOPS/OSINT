#!/bin/bash
# use only for Hyperion v3.1 on Ubuntu 21.04
# Script for Hyperion v3.x that tests ftp servers
# Usage ./ftp.sh 8.8.8.8 port mydir - as single command line argument but can use website instead of IP address eg google.com for 8.8.8.8.
# First argument $1: $usIP user IP
# Second Argument $2: $uport port number
# third argumnet $3 mydir
# User Input from  command line arguments
userIP="$1" # IP address eg 8.8.8.8
uport="$2" # uport
udir="$3" # directory for reports

# finalrecon

# dnsenum

# theHarvester

# maltego??

# twint

# all dns
sudo nmap -p - --script dns* $userIP -oX dns.xml
xslproc dns.xml -o dns.html

# local storage ready for upload to client's container
cd /
cd root
mkdir $udir
cd $udir
mv /root/dns.html /root/$udir/dns.html
echo " Your results are stored in directory $udir "
sleep 10
cd /
cd root
