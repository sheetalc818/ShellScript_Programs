#!/bin/bash -x

# Argument1 
A=2

#Accepting the Argument2 from user
echo "Enter the value for N(exponent):"
read N

# Function to calculate power of 2
function power()
{
	# value of A
	a=$1

	# value of B
	n=$2

	# c to count counter
	c=1

	# res to store the result
 	res=1

	# If 2^0
 	if ((n==0))
 	then
    	res=1
 	fi

	# Checking for non-zero value
 	if ((a >= 1 && n >= 1))
 	then
		# Checking for counter value and result value
    	while ((c <= n && res <= 256))
    	do
      		res=$((res * a))
      		c=$((c + 1))
    	done
 	fi

  # Display the result
	#echo $res
}

# calling the pow function
power $A $N
