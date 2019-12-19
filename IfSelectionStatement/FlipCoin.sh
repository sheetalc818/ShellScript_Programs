#!/bin/bash -x
#flip a coin
Head=0;
Tail=0;

#Checking for Head and Tail
function getFlip()
{
	if [ $1 -eq 1 ]
	then
		((Head++))
	else
		((tail++))
	fi
}

#Calling getFlip() function
getFlip $(($RANDOM%2))

