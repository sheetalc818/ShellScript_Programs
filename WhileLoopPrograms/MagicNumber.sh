#!/bin/bash -x

#Variables
LOW=1
HIGH=100

#Asking user to think number
echo "Think number n in between 1 to 100:"

#function optionCase()
#{
#   printf "Press 1 if Number is $mid"
# 	 printf "Press 2 if Number is less than $mid"
#	 printf "Press 3 if Number is greater than $mid"
#	 read num
#	 local myresult=$num
#	 echo $myresult
#}

#getNumber() function
function getNumber()
{
	#Calculating mid
	mid=$(( ($LOW+$HIGH)/2 ))
	echo $mid

	printf "Press 1 if Number is $mid"
  	printf "Press 2 if Number is less than $mid"
   printf "Press 3 if Number is greater than $mid"
	read number

	#Calling optionCase() function
	#number=$(optionCase)
	#echo "-----"$number

	case $number in
		1)
			echo "You have found number $mid"
			;;
		2)
			HIGH=$mid
			getNumber $LOW $HIGH
			;;
		3)
			LOW=$mid
			getNumber $LOW $HIGH
			;;
		*)
			exit
			;;
	esac
}

#Calling a getNumber() function
getNumber $LOW $HIGH
