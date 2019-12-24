#!/bin/bash -x

#Declaring the Dictionary
declare -A number

#Variables
status=0

#Repeat the Die roll and finding the result each time
while [ $status -eq 0 ];
do
		#Roll a die and find the number between 1 to 6
		num=$((RANDOM%6+1))
		echo $num
		#echo $(("${number[$num]}" + 1)) 	"$num"
		number[$num]=$(("${number[$num]}" + 1))
		((count++))
		if [ ${number[$num]} -eq 10 ]
		then
			status=1
		fi
done

length="${#number[@]}"
echo "length:$length"
#printing the Dictionary
for (( i=1; i<=$((${#number[@]})); i++ ))
do
   echo "key : $i Value : ${number[$i]}"
done

#Storing the result in a dictionary and Printing it
for (( i=1; i<=$((${#number[@]})); i++ ))
do
    echo "$i : ${number[$i]}"
done | sort -n -k2 | head -1

for (( i=1; i<=$((${#number[@]})); i++ ))
do
   #echo "Key: $i Value : ${number[$i]}"
    echo "$i : ${number[$i]}"
done | sort -n -k2 | tail -1


