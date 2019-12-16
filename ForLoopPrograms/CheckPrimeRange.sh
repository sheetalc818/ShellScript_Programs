#!/bin/bash -x

echo "Enter the first number:";
read start;

echo "Enter the second number:";
read end

function checkPrime()
{
	for (( i=$1; i<=$2; i++ ))
	do
		flag=0
		for (( j=2; j<=i/2; j++ ))
		do
			if [ $(($i%$j)) -eq 0 ]
			then
				flag=1;
				break;
			fi
		done

		if [ $flag -eq 0 ]
		then
			echo $i
		fi
	done
}

checkPrime $start $end
