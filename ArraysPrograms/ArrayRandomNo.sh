#!/bin/bash -x

#VARIABLES
MAXCOUNT=10
count=1

declare -A num

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

#Finding second Gretest element from array
function findSecondGretest()
{
	largest=${number[1]}
	secondGretest="unset"

	for (( i=0; i<${#number[@]}; i++ ))
	do
		if [[ ${number[i]} > $largest ]]
		then
			secondGretest=$largest
			largest=${number[i]}
		elif [[ ${number[i]} -ne $largest  &&  "$secondGreatest" -eq "unset" || ${number[i]} -gt $secondGretest ]]
 		then
   		secondGreatest=${number[$i]}
 		fi
	done
	echo "secondGreatest=$secondGreatest"
}

#Finding second smallest number
function findSecondSmallest()
{
	min=${number[1]}

	for (( i=0; i<${#number[@]}; i++ ))
	do
		if [ ${number[i]} -lt $min ]
		then
			second_min=$min;
			min=${number[i]};
		fi
	done

	for (( i=0; i<${#number[@]}; i++ ))
	do
		if [ ${number[i]} -lt $second_min -a ${number[i]} -ne $min ]
		then
			second_min=${number[i]}
		fi
	done
	echo "secondMinimum=$second_min"
}

randomArray $MAXCOUNT $count
num=$(randomArray)
findSecondGretest "${num[@]}"
findSecondSmallest "${num[@]}"
