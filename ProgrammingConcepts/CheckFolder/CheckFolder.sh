#!/bin/bash

#for folderName in `ls -d */`
#do
echo "Enter Folder name:" 				# Asking user to enter folder name
read folderName           				# reading folderName from coomand line
	if [ ! -d $folderName ];			# checking whether folder Exist
	then
		echo "Creating directory"     # printing message
		mkdir $folderName					# creating directory
	else
		echo "Folder already Exist"	# printing message if folder already exist
	fi
#done

