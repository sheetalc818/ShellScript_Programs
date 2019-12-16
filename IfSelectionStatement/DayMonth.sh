#!/bin/bash -x
#taking command line argument
echo "Enter date:" 
read date
echo "Enter month:" 
read month

function checkDate()
{
	if [[ $1 -eq 3 && $2 -ge 20 && $1 -eq 6 && $2 -le 20 ]]
	then
		echo "true";
	else
		echo "false";
	fi
}

checkDate $1 $2
