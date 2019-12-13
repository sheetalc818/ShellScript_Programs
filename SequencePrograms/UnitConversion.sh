#!/bin/bash -x

#A.Calculating feet from inches
in=inches
ft=feet
mt=meter
read -p "Enter value in inches:" value
echo "$value $in= $[$value/12] $ft"

#B.Calculating Rectangular Plot
read -p "Enter Value for x in feet of Rectangular Plot: " x 
read -p "Enter Value for y in feet of Rectangular Plot: " y
area=$(( $x*$y ))
echo $area
ct=3.28
#rectPlot=$(echo "$(( $area/3.28))" | bc -l);
echo "scale=2;$area/$ct" | bc

#C.Calculating area for 25 plots in acres
i=1
height=60
width=40
while [ $i -lt 26 ]
do
	area=$height*$width
	echo "scale=2;$area/$ct" | bc
	((i++))
done
