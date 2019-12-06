#!/bin/bash -x
#created two text file
#copied original-file.txt into the updated-file.txt
#for file in `ls *.txt`
#do
	#filename=`echo $file | awk -F . '{print $1}'`;
	diff original-file.txt updated-file.txt
#done
