#!/bin/bash -x

GOAL=200

read -p "Enter stake(money) value: " stake
read -p "Enter trials: " trials

function getPercentage()
{
	perWin=`echo "scale=2; ($win/$trials)*100.0" | bc`
   echo "Percent of games won=$perWin"

	Bet=`echo "scale=2; ($bet/$trials)*1.0" | bc`
   echo "Avg # bets=$Bet"
}

function calculateWin()
{
	local t
	win=0
	bet=0
	#cash=0
	for (( t=1; t<=trials; t++ ))
	do
		local cash=$stake

		while [ $cash -gt 0 -a $cash -lt $GOAL ]
		do
			((bet++))
			if [ $((RANDOM%2)) -eq 1 ]
			then
				((cash++))
			else
				((cash--))
			fi
		done
	done

	if [ $cash==$GOAL ]
	then
		((win++))
	fi
	echo $win "wins of" $trials

	getPercentage $win $trials $bet
}

calculateWin $GOAL $trials $stake
