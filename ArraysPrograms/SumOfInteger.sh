#!/bin/bash -x

#Declaring array variable
declare -a arr

#arr=( 0, -1, 2, -3, 1 )

#Adding the elements into the array
arr[((count++))]=0
arr[((count++))]=-1
arr[((count++))]=2
arr[((count++))]=-3
arr[((count++))]=1
echo ${arr[*]}

#Calculating length of array
length=${#arr[*]}
echo $length

declare -i sum=0

#Function to find Triplets
function findTriplets()
{
	local found="true"
	for (( i=0; i<$(($length-2)); i++ ))
	do
		for (( j=$(($i+1)); j<$(($length-1)); j++ ))
		do
			for (( k=$(($j+1)); k<$length; k++ ))
			do
				sum=$((${arr[i]}+${arr[j]}+${arr[k]}));
				if [ $sum -eq 0 ]
				then
						echo "${arr[i]},${arr[j]},${arr[k]}"
						found="true"
				fi
			done
		done
	done

	if [ $found == "false" ]
	then
		echo "Not Exist"
	fi
}
findTriplets "${arr[@]}" $length
