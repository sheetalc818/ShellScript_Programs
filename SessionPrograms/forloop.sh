#!/bin/bash -x

for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	#echo "cheking for already existing directory started"
	if [ -d $folderName ];
	then
		rm -r $folderName;
	fi
	#echo creating folder ${folderName}
	mkdir $folderName;
	#echo copying ${file} ${folderName}
	cp $file $folderName/;
done
