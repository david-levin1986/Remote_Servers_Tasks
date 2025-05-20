#! /bin/bash

# Author: David Levin
# Date Created: 29/04/2025
# Last Modified: 30/04/2025
   
# Description:
# Backup Home Dir to the curend dir (to the location you are runing the script from)
  
# Usage:
# Jast run the script 
echo "" >> /tmp/$(hostname)performance.log
date >> /tmp/$(hostname)performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)performance.log
echo "Testing Internet Connection... " >> /tmp/$(hostname)performance.log
ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ] ; then
echo "Internet Connected Sucssesfuly :" >> /tmp/$(hostname)performance.log
else
echo "Internet Is Disconnected :" >> /tmp/$(hostname)performance.log

fi 
 echo "-------------------------------------------------------" >> /tmp/$(hostname)performance.log
  echo "" >> /tmp/$(hostname)performance.log

echo "RAM Usage :" >> /tmp/$(hostname)performance.log
free -h | grep -i "Mem" >> /tmp/$(hostname)performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)performance.log
echo "" >> /tmp/$(hostname)performance.log
echo "Swap Usage :" >> /tmp/$(hostname)performance.log
free -h | grep -i "Swap" >> /tmp/$(hostname)performance.log
echo "-------------------------------------------------------" >> /tmp/$(hostname)performance.log
echo "" >> /tmp/$(hostname)performance.log
echo "Disk Usage :" >> /tmp/$(hostname)performance.log
df -h >> /tmp/$(hostname)performance.log
echo "" >> /tmp/$(hostname)performance.log
