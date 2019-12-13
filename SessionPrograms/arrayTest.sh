#!/bin/bash -x
COUNTER=0
Fruites[((COUNTER++))]="APPLE"
Fruites[((COUNTER++))]="BANANA"
Fruites[((COUNTER++))]="MANGO"
Fruites[((COUNTER++))]="PIE"
#Printing array values
echo ${Fruites[@]}
#use of disctionary
echo ${!Fruites[@]}

#Printing using for-loop
for counter in  "${Fruites[@]}"
do
	echo $counter
done	

