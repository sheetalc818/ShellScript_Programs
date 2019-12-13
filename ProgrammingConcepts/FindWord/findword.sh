#!/bin/bash -x
for file in `ls /var/log/*.log`		# finding a file from /var/log with log extention
do
	grep -wrc "systemd" $file   
done

