#!/bin/bash -x
#flip a coin
Head=0;
Tail=0;

function getFlip()
{
	if [ $1 -eq 1 ]
	then
		((Head++))
	else
		((tail++))
	fi
}

getFlip $(($(($RANDOM%10))%2))

