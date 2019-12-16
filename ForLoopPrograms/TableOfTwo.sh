#!/bin/bash -x
#Number variable
NUM=2;

#Taking a input from user
echo "Enter value for n to calculate 2^n:"
read n

#Function to calculate 2's power
function getPower()
{
	for (( i=1; i<=$n; i++ ))
	do
		echo $(($NUM*$i));
	done
}

#Calling function and passing argument
getPower $n $NUM
