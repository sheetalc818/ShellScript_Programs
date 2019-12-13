#!/bin/bash -x
#Read a Number and Display the week day (Sunday, Monday,...)
function getDay()
{
	if [ $1 -eq 0 ]
	then
		echo "SUNDAY"
	elif [ $1 -eq 1 ]
	then
		echo "MONDAY"
	elif [ $1 -eq 2 ]
	then
		echo "TUESDAY"
	elif [ $1 -eq 3 ]
	then 
		echo "WEDNESDAY"
	elif [ $1 -eq 4 ]
	then
		echo "THURSDAY"
	elif [ $1 -eq 5 ]
	then
		echo "FRIDAY"
	elif [ $1 -eq 6 ]
	then
		echo "SATURDAY"
	fi
}
getDay $((RANDOM%6))

