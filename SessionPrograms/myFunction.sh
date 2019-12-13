#! /bin/bash -x
myfunction() 
{
	echo $(( $2+$1 ))
}
result=$( myfunction $((RANDOM%2)) 2 )
if [ $result -eq 2 ]
then
	echo "Success"
else
	echo "failure"
fi
