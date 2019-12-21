#!/bin/bash -x

#Accepting the input
echo "Enter the number to calculate factors using prime factorization method:"
read N

#Function getPrimeFactor()
function getPrimeFactor()
{
	#local N=$1
	for (( i=2; i*i<$N; i++ ))
	do
		#While i divides n, print i and divide n
		while [ $(($N%$i)) -eq 0 ]
		do
			echo $i
			N=$(($N/$i))
		done

		#This condition is to handle the case when N is a prime number greater than 2
		if [ $N -gt 2 ]
		then
			echo $N
		fi
	done
}
#Calling function
getPrimeFactor $N
