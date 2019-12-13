#!/bin/bash -x

#Taking input from user
echo -n "Enter the number: "
read n

count=$(echo $n | wc -c ) #calculating the length
length=$(( $count - 1 )) 

#Function : To get Word
function getWord() 
{
	case $1 in
					0) echo "ZERO" ;;
					1)	echo "ONE" ;;
					2) echo "TWO" ;;
					3) echo "THREE" ;;
					4) echo "FOUR" ;;
					5) echo "FIVE" ;;
					6) echo "SIX" ;;
					7) echo "SEVEN" ;;
					8) echo "EIGHT" ;;
					9) echo "NINE" ;;
		esac
}

#Calling the getWord() function
for i in `seq $length`
do
   getWord $(echo $n | cut -c $i) #getting single digit at a time
done
