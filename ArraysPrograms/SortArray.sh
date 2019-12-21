#!/bin/bash -x
. ./RandomArrayGenerator.sh

#declare -a array
#array=$(randomArray)
echo "${array[@]}"

function sortArray()
{
	echo ${number[*]}
	local length=${#number[@]}

	for (( i=$length; i>0; i-- )); 
	do
      for (( j=1; j<=$i; j++ ));
		do
          if [[ ${number[j-1]} -gt ${number[j]} ]]; 
			 then
                temp="${number[j-1]}"
                number[j-1]="${number[j]}"
                number[j]="$temp"
          fi
      done
	done
}
sortArray "${array[@]}"
echo "SORTED ARRAY:${number[*]}"

echo "SecondSmallest=${number[2]}"
echo "SecondLargest=${number[$length-2]}"
