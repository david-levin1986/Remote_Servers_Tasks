#! /bin/bash

# Author: David Levin
# Date Created: 29/04/2025
# Last Modified: 30/04/2025
   
# Description:
# Backup Home Dir to the curend dir (to the location you are runing the script from)
  
# Usage:
# Jast run the script 
echo "" >> /tmp/$(hostname)_performance.log
date >> /tmp/$(hostname)_performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance.log
echo "Testing Internet Connection... " >> /tmp/$(hostname)_performance.log
ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ] ; then
echo "Internet Connected Sucssesfuly :" >> /tmp/$(hostname)_performance.log
else
echo "Internet Is Disconnected :" >> /tmp/$(hostname)_performance.log

fi 
 echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance.log
  echo "" >> /tmp/$(hostname)_performance.log

echo "RAM Usage :" >> /tmp/$(hostname)_performance.log
free -h | grep -i "Mem" >> /tmp/$(hostname)_performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance.log
echo "" >> /tmp/$(hostname)_performance.log
echo "Swap Usage :" >> /tmp/$(hostname)_performance.log
free -h | grep -i "Swap" >> /tmp/$(hostname)_performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)_performance.log
echo "" >> /tmp/$(hostname)_performance.log
echo "Disk Usage :" >> /tmp/$(hostname)_performance.log
df -h >> /tmp/$(hostname)_performance.log
echo "" >> /tmp/$(hostname)_performance.log
