#!/bin/bash -x

#${#i}=gives the length of the string
max=0;
read -p "How many numbers you want to enter: " num
echo "Enter $num of 3 digit numbers: "
for i in `seq $num`
do
 	read i
	if [ ${#i} -eq 3 ]
	then
		if [ $i -gt $max ]
		then
			max=$i
		else
			min=$i
		fi
	else
		echo "Please Enter three digit numbers"
	fi	  
#done
#echo "Max Number: $max"
#echo "Min Number: $min" 


#Finding max and min value by generating random numbers
for (( i=0; i<5; i++ ))
do
	value[$i]=$((RANDOM%900 + 100))
	max=${value[0]}
	min=${value[0]}
	if [ ${#value[i]} -eq 3 ]
	then
		for j in ${value[@]}
		do
			if [ $j -gt $max ]
			then
				max=$j
			elif [ $j -lt $min ]
			then
				min=$j
			fi
		done
	fi
done
echo Max $max
echo min $min
#echo ${value[@]}
