#!/bin/bash -x

#Declaring dictionary
declare -A Month

#Variables
count=0;
status=0;
while [ $count -le 50 ]
do
	num=$((RANDOM%12+1))
	echo $num
	Month[$num]=$(("${Month[$num]}" + 1))
	((count++))
done

#Printing no of person count in particular month
for (( i=1; i<$((${#Month[@]}+1)); i++ ))
do
	echo "Month: $i Count: ${Month[$i]}"
done


