#!bin/bash
timestamp=$( date +%s )
cat d.log | awk -v date= $timestamp | awk '{print $7}' | sort -nr | uniq -c | head -4 
