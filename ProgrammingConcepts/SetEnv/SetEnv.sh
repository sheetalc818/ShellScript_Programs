#!/bin/bash
usersecret=""
if [ -z $usersecret ]			# Return true if variable is unset
	then
		usersecret="dH34xJaa23"
		echo usersecret $usersecret
	else
		echo "usersecret key is not empty"
fi
#The -z checks for a zero-length (i.e. empty) string
