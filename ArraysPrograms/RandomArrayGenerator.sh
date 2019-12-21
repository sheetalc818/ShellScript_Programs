#!/bin/bash -x

MAXCOUNT=10
count=1
declare -a number;

function randomArray()
{
	#Storing random numbers in Array
	while [ "$count" -le $MAXCOUNT ];
	do
		num=$((RANDOM%1000))
		if [ ${#num} -eq 3 ]
		then
			number[$count]=$num
			((count++))
		fi
	done
	#Printing array elements
	echo "${number[@]}"
}

randomArray;
