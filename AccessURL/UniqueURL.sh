#!/bin/bash -x
#cat /home/admin1/Videos/TerminalCommands/linux-content/access.log | awk '{print $7}' | sort -nr | uniq -c | head -4 
read -p "Enter timestamp:" timestamp
file=/home/admin1/Videos/TerminalCommands/linux-content/access.log
if [ `awk '{print $4}' $file | cut -d ':' -f 2 -eq $timestamp` ] 
then
awk '{print $7}'
fi
