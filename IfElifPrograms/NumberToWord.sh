#!/bin/bash -x

echo -n "Enter the number: "
read n

count=$(echo $n | wc -c ) #calculating the length
length=$(( $count - 1 ))

#Function : To get Word
function getWord()
{
	if [ $1 -eq 0 ]
	then
		echo "ZERO"
	elif [ $1 -eq 1 ]
	then
		echo "ONE"
	elif [ $1 -eq 2 ]
	then
		echo "TWO"
	elif [ $1 -eq 3 ]
	then
		echo "THREE"
	elif [ $1 -eq 4 ]
	then
		echo "FOUR"
	elif [ $1 -eq 5 ]
	then
		echo "FIVE"
	elif [ $1 -eq 6 ]
	then
		echo "SIX"
	elif [ $1 -eq 7 ]
	then
		echo "SEVEN"
	elif [ $1 -eq 8 ]
	then
		echo "EIGHT"
	elif [ $1 -eq 9 ]
	then
		echo "NINE"
	fi
}

#Calling the getWord() function
for i in `seq $length`
do
   getWord $(echo $n | cut -c $i) #getting single digit at a time
done


