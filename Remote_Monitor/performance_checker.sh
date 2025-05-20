#! /bin/bash

# Author: David Levin
# Date Created: 29/04/2025
# Last Modified: 30/04/2025
   
# Description:
# Backup Home Dir to the curend dir (to the location you are runing the script from)
  
# Usage:
# Jast run the script 

#Varibols:
dateformat=$(date +"%d-%m-%Y_%H:%M:%S")
#-------------------------------------------------------
echo "" >> /tmp/$(hostname)_performance_"$dateformat".log
date >> /tmp/$(hostname)_performance_"$dateformat".log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "Testing Internet Connection... " >> /tmp/$(hostname)_performance_"$dateformat".log
ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ] ; then
echo "Internet Connected Sucssesfuly :" >> /tmp/$(hostname)_performance_"$dateformat".log
else
echo "Internet Is Disconnected :" >> /tmp/$(hostname)_performance_"$dateformat".log

fi 
 echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance_"$dateformat".log
  echo "" >> /tmp/$(hostname)_performance_"$dateformat".log

echo "RAM Usage :" >> /tmp/$(hostname)_performance_"$dateformat".log
free -h | grep -i "Mem" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "Swap Usage :" >> /tmp/$(hostname)_performance_"$dateformat".log
free -h | grep -i "Swap" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "" >> /tmp/$(hostname)_performance_"$dateformat".log
echo "Disk Usage :" >> /tmp/$(hostname)_performance_"$dateformat".log
df -h >> /tmp/$(hostname)_performance_"$dateformat".log
echo "" >> /tmp/$(hostname)_performance_"$dateformat".log
