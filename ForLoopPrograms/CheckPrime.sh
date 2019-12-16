#!/bin/bash -x

#Accepting the input from the user
echo "Enter number to check whether it is prime or not:"
read num;

#Function to check number is prime or not
function checkPrime()
{
	for (( i=2; i<=$num/2; i++ ))
	do
		flag=0
		if [ $(($num%$i)) -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag == 1 ]
	then
		echo "$num is not a prime"
	else
		echo "$num is a prime number"
	fi
}
checkPrime $num

