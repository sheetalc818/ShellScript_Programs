#!/bin/bash -x

#Accepting input from user
echo "Enter the value for n to calculate harmonic numbers:"
read n

#Variables
s=0.0;

#Function to calculae Harmonic Numbers
function getHarmonicNumbers()
{
   for (( i=1; i<=$n; i++ ))
   do
		  s=`echo "scale=4;$s+(1/$i)" | bc`
	done
	echo $s
}

#Calling getHarmonicNumbers
getHarmonicNumbers $n $s
