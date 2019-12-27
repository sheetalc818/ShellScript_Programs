#!/bin/bash -x
#Read a Number and Display the week day (Sunday, Monday,...)

function getDay()
{
	case $1 in 
				0) echo "SUNDAY" ;;
				1) echo "MONDAY" ;;
				2) echo "TUESDAY" ;;
				3) echo "WEDNESDAY" ;;
				4) echo "THURSDAY" ;;
				5) echo "FRIDAY" ;;
				6) echo "SATURDAY" ;;
	esac
}
getDay $((RANDOM%6))

