#!/bin/bash
Command=$1
$Command
	if [ $? -eq 0 ]
	then
		echo Command executed with status $?
	else
		echo Command is not valid with status $?
	fi

