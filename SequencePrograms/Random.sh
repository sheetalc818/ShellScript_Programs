#!/bin/bash -x
echo "printing random number"
echo $RANDOM 

echo "printing single digit random no"
echo $((RANDOM%10))

echo "printing dice no between 1 to 6"
echo $(( RANDOM % 6 + 1 ))

echo "Adding two random numbers"
addRandom=$(( $(( RANDOM % 6 + 1 )) + $(( RANDOM % 6 + 1 )) ))
echo $addRandom


