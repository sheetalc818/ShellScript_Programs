#!/bin/bash -x
#Accepting the input
echo "Enter the number to calculate factors using prime factorization method:"
read N

declare -a arr

#Function getPrimeFactor()
function getPrimeFactor()
{
   #local N=$1
   for (( i=2; i*i<$N; i++ ))
   do
      #While i divides n, print i and divide n
      while [ $(($N%$i)) -eq 0 ]
      do
         arr+=("$i")
         N=$(($N/$i))
      done

      #This condition is to handle the case when N is a prime number greater than 2
      #if [ $N -gt 2 ]
      #then
         arr+=("$N")
      #fi
   done

	echo "${arr[@]}"
}
#Calling function
getPrimeFactor $N


