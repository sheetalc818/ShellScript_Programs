#!/bin/bash -x

echo "-------Temperature Conversion-----"
echo "Select 1 if degree Celsius to Fahrenheite:"
echo "Select 2 if degree Fahrenheite to Celsius:"
read choice

#Freezing Point 
#(0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )

#Function to convert Celsius to Fahrenheite
function degreeCToF()
{
	#echo "Enter temperature in degree celsius:"
	#read degC

	if [ $degC -ge 0 -o $degC -le 100 ]
	then
		degF=`echo "scale=2;$degC*(9/5)+32" | bc`
	fi
	echo $degF
}

#Function to convert Fahrenheite to Celsius
function degreeFToC()
{
	#echo "Enter temperature in degree Fahrenheit:"
	#read degF

	if [ $degF -ge 32 -o $degF -le 212 ]
	then
		degC=`echo "scale=2; 5/9*($degF-32)" | bc`
	fi
	echo $degC
}

#Function to take choice and call functions
function degreeConversion()
{
	case $choice in
			1)
				echo "Enter tempreture in degree celsius:"
  				read degC

				degFa=$(degreeCToF $degC)
				echo "Celsius conversion in fahrenheit: $degFa"
				;;
			2)
				echo "Enter tempreture in degree Fahrenheit:"
   			read degF

				degCel=$(degreeFToC $degF)
				echo "Fahrenheit conversion in Celsius: $degCel"
				;;
			*)
				exit
				;;
	esac
}
degreeConversion $choice
