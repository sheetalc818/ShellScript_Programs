#!/bin/bash -x
#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array

#Variables
START=0;
END=100;

#Declaring an array
declare -a arr;

#Function to check Repeated Digit
function repeatedDigit()
{
	for (( i=1; i<$END; i++ ))
	do
		if [ $(($i%11)) == 0 ]
		then
			arr+="$i "
		fi
	done
	echo ${arr[@]}
}

#Calling function by passing Arguments
repeatedDigit $START $END

