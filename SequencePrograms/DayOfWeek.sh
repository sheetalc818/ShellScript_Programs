#!/bin/bash -x
read -p "Enter Date: " date
read -p "Enter Month: "  month
read -p "Enter Year: " year
d=$date
m=$month
y=$year

y0=$(( $y-((14-$m)/12) ));
x=$(( $y0+($y0/4)-($y0/100)+($y0/400) ));
m0=$(( $m+(12*((14-$m)/12))-2 ));
d0=$(( ($d + $x + ((31 * $m0) / 12)) %7 ));

echo "Result : "$d0

case $d0 in
                0)
    			echo "Sunday"
                        ;;
                1)
			echo "Monday"
                        ;;
		2)
			echo  "Tuesday"
			;;
		3)
			echo "Wednesday"
			;;
		4)
			echo "Thursday"
			;;
		5)
			echo "Friday"
			;;
		6)
			echo "Saturday"
			;;
                *)
			echo "Exit"
			;;
esac
