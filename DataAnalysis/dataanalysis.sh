#!/bin/bash -x

#file path for data.csv
file=/home/admin1/Videos/TerminalCommands/linux-content/data.csv

#print Employee name and Total pay who has BasePay greater than 10000
awk '$4>10000' $file | awk '{print $2,$7;}'  

#Printing the Row having jobtitle as CAPTAIN
grep -i captain $file | awk '{ sum+=$7 } END{print sum}'

#Printing JobTitle and OverTimepay who has OverTimepay between 7000 and 10000
awk '$5 >7000 && $5 <10000' $file | awk '{print $3,$5;}'

#Print average basePay
cat $file | awk '{ sum+=$4 } END{print sum/NR }'

