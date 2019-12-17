#!/bin/bash -x

#Variables
LOW=1
HIGH=100

#Asking user to think number
echo "Think number n in between 1 to 100:"

#getNumber() function
function getNumber()
{
	#Calculating mid
	mid=$(( ($LOW+$HIGH)/2 ))
	echo $mid

	#Calling optionCase() function
	number=$(optionCase)

	while [ $LOW -ne $HIGH ]
	do
			if [[ $number -eq 1 ]]
			then
				echo "You have found number $mid"
			elif [[ $number -eq 2 ]]
			then
				last=$mid
				getNumber $LOW $last
			elif [[ $number -eq 3 ]]
			then
				first=$mid
				getNumber $first $last
			else
				exit
			fi
	done
}

function optionCase()
{
	echo "Press 1 if Number is $mid"
   echo "Press 2 if Number is less than $mid"
   echo "Press 3 if Number is greater than $mid"
   read number
}

getNumber $LOW $HIGH
