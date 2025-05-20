#! /bin/bash

# Author: David Levin
# Date Created: 29/04/2025
# Last Modified: 30/04/2025
   
# Description:
# Backup Home Dir to the curend dir (to the location you are runing the script from)
  
# Usage:
# Jast run the script 
echo "" >> /tmp/performance.log
date >> /tmp/performance.log
echo "-------------------------------------------------------" >> /tmp/performance.log
echo "Testing Internet Connection... " >> /tmp/performance.log
ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ] ; then
echo "Internet Connected Sucssesfuly :" >> /tmp/performance.log
else
echo "Internet Is Disconnected :" >> /tmp/performance.log

fi 
 echo "-------------------------------------------------------" >> /tmp/performance.log
  echo "" >> /tmp/performance.log

echo "RAM Usage :" >> /tmp/performance.log
free -h | grep -i "Mem" >> /tmp/performance.log
echo "-------------------------------------------------------" >> /tmp/performance.log
echo "" >> /tmp/performance.log
echo "Swap Usage :" >> /tmp/performance.log
free -h | grep -i "Swap" >> /tmp/performance.log
echo "-------------------------------------------------------" >> /tmp/performance.log
echo "" >> /tmp/performance.log
echo "Disk Usage :" >> /tmp/performance.log
df -h >> /tmp/performance.log
echo "" >> /tmp/performance.log
