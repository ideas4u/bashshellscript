#!/bin/bash
# using the for loop to get all the user's shell
#
for list in `cat /etc/passwd`
	do
	echo  "$list" | cut -d: -f1,7 | grep  '/'  
	done

