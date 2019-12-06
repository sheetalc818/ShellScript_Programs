#!bin/bash
timestamp=$( date +%s )
cat /home/admin1/Videos/TerminalCommands/linux-content/access.log | awk '{print $9}' | sort -nr | uniq -c  
