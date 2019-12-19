#!/bin/bash -x
#num=545

# Storing the remainder
s=0
# Store number in reverse order
rev=""

#declare -A Number

# Accepting Input from user
read -p "Enter the Number1 to check for the Palindrome:" num
read -p "Enter the Number2 to check for the Palindrome:" num2

#Number[0]=$num1
#Number[1]=$num2

#for (( i=0; i<${#Number[@]}; i++ ))
#do
#	echo "${Number[$i]}"
#done

# Store original number in another variable
temp1=$num1

function checkPalindrome()
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

	if [ $num2 == $rev ]
	then
    		echo "Number1 and Number2 are palindrome numbers"
	else
    		echo "Number1 and number2 are not a palindrome numbers"
	fi
}
checkPalindrome $num
