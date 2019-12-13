#!/bin/bash -x
#Write a program that takes User Inputs and does Unit Conversion of different Length units
#1. Feet to Inch 3. Inch to Feet
#2. Feet to Meter 4. Meter to Feet

#Variable
CHOICE=0

#Menu
echo "-------Menu------"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"

#Accepting input from the user
echo "Select the Option to perform the option:"
read CHOICE

function getFeetToInch(){
	echo "Enter the length in feet:"
	read feet
	inches=$(($feet*12))
	echo $inches
}

function getFeetToMeter(){
	echo "Enter the length in Feet:"
	read feet
	#meter=$(("scale=4;$feet*0.3048" | bc ))
	echo "scale=4;$feet*0.3048" | bc
}

#echo "scale=2;$area/$ct" | bc

function getInchToFeet(){
	echo "Enter the length in Inch:"
	read inch
	echo "scale=7;$inch*0.0833333" | bc
}

function getMeterToFeet(){
	echo "Enter length in Meter:"
	read meter
	echo "scale=2;$meter*3.28" | bc
}

#Case
case $CHOICE in
	1) getFeetToInch ;;
	2) getFeetToMeter ;;
	3) getInchToFeet ;;
	4) getMeterToFeet ;;
esac
