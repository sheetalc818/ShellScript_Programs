#!/bin/bash -x

#Variables
head=0;
tail=0;

function getFlip()
{
	while [ $head -ne 11 -a $tail -ne 11 ]
	do
		#Generation the Random number
		num=$(($RANDOM%2))

		#Checking if Head
		if [ $num -eq 1 ]
		then
			((head++))
		else
			((tail++))
		fi
	done

	#Checking for win condition
	checkWin
}

#Function
function checkWin()
{
	if [ $head -eq 11 ]
	then
		echo "HEAD WINS"
	else
		echo "TAIL WINS"
	fi
}
#Calling the getFlip function
getFlip

