#!/bin/bash -x

#. ../ForLoopPrograms/CheckPrime.sh

# Calling function CheckPrime() from the CheckPrime.sh
#CheckPrime

echo "Enter number to check for prime palindrome:"
read num1
# Function to check whether number is prime or not
function checkPrime()
{
	num=$num1
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
		temp=$num
		palindromeCheck $num $temp
   fi
}

# Function to check Palindrome of the number
function palindromeCheck()
{
	while [ $num -gt 0 ]
	do
   	 # Get Remainder
    	 s=$(( $num%10 ))

    	 # Get next digit
    	 num=$(( $num/10 ))

       # Store previous number and current digit in reverse
       rev=$( echo ${rev}${s} )
	done

	if [ $temp -eq $rev ]
	then
    	echo "Number is palindrome number"
	else
    	echo "Number is not a palindrome number"
	fi
}
#Calling checkPrime()
checkPrime $num1

