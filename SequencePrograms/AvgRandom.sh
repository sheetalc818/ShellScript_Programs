#!/bin/bash -x
sum=0
N=5
for i in `seq 5`
do
   sum=$(( $sum + ( $RANDOM % 99 + 10 ) )) 
done
echo $sum
avg=$(( $sum / $N | bc -l ))
echo "Average is:" $avg

