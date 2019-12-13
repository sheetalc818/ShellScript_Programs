#!/bin/bash -x

#Variables
MAX=0;
MIN=0;

#Taking input from user
echo "Enter three values: " 
read a b c

#Evaluating expression
exp1=$((a + b * c))
exp2=$((a % b + c))
exp3=$((c + a / b))
exp4=$((a * b + c))
echo $exp1 $exp2 $exp3 $exp4

#Function
function getMinMax()
{
	#Checking for the Max value from  the four values
	if [[ $1 -gt $2 && $1 -gt $3 && $1 -gt $4 ]]
	then 
			MAX=$1
	elif [[ $2 -gt $1 && $2 -gt $3 && $2 -gt $4 ]]
	then 
			MAX=$2
	elif [[ $3 -gt $1 && $3 -gt $2 && $3 -gt $4 ]]
	then
			MAX=$3
	elif [[ $4 -gt $1 && $4 -gt $2 && $4 -gt $3 ]]
	then
			MAX=$4
	fi

	#Checking for the Min value from  the four values
	if [[ $1 -lt $2 && $1 -lt $3 && $1 -lt $4 ]]
   then 
         MIN=$1
   elif [[ $2 -lt $1 && $2 -lt $3 && $2 -lt $4 ]]
   then 
         MIN=$2
   elif [[ $3 -lt $1 && $3 -lt $2 && $3 -lt $4 ]]
   then
         MIN=$3
   elif [[ $4 -lt $1 && $4 -lt $2 && $4 -lt $3 ]]
   then
         MIN=$4
   fi
}

#Calling the getMinMax() function
getMinMax $exp1 $exp2 $exp3 $exp4

#Printing Min and Max value
echo "Mininum value is: " $MIN
echo "Maximum value is: " $MAX
