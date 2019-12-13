#!/bin/bash -x
echo "How many numbers you want to print: "
read num
x=1

for (( i=0; i < $num; i++ ))
do 
		x=$(($x*10))
			case $x in
				1)	echo "UNIT" ;;
				10) echo "TEN" ;;
				100) echo "HUNDRED" ;;
				1000) echo "THOUSAND" ;;
				10000) echo "TEN THOUSAND" ;;
				100000) echo "LAKH" ;;
				*) echo "Add value in case" 
					break ;;
		   esac
done


