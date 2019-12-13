#!/bin/bash -x
echo "How many numbers you want to print: "
read num
x=1
#x=$(($x*10))
for (( i=0; i < $num; i++ ))
do
		x=$(($x*10))

		if [ $x -eq 1 ]
		then
				echo "UNIT"
		elif [ $x -eq 10 ]
		then
				echo "TEN"
		elif [ $x -eq 100 ]
		then
				echo "HUNDRED"
		elif [ $x -eq 1000 ]
		then
				echo "THOUSAND"
		elif [ $x -eq 10000 ]
		then
				echo "TEN THOUSAND"
		elif [ $x -eq 100000 ]
		then
				echo "LAKH"
	   fi
done


