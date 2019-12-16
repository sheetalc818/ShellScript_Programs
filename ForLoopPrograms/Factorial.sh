#!/bin/bash -x

#Accepting the input from the user
echo "Enter the number to calculate factorial:"
read num

#Variable
fact=1;

#Function to calculate factorial
function factorial()
{
	for (( i=$num; i>0; i-- ))
	do
		fact=$(( $fact*$i ))
		echo $fact
	done
}

#calling factorial() function
factorial

