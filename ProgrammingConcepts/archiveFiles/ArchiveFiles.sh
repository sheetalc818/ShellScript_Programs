#!/bin/bash
#finding a files that are modified before 1min
mkdir appendDay
for file in `find . -type f -mmin +30`
do
	echo $file;
	cp -r $file appendDay;
done




