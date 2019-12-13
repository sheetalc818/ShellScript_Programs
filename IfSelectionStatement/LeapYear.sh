#!/bin/bash -x
#Program to check whether the year is leap year or not
echo "Enter the year"
read y

a=`expr $y % 4`
b=`expr $y % 100`
c=`expr $y % 400`

#checking for the Leap year
function checkLeap()
{
	if [ $1 -eq 0 -a $2 -ne 0 -o $3 -eq 0 ]
	then
		echo $y is leap year
	else
		echo $y is not leap year
	fi
}
#passing the argument for the checkLeap() function
checkLeap $a $b $c
