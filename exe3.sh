#!/bin/bash
#add ten users :user101-user110
#
for num in `seq 101 110`
	do
		useradd user$num
		if [ $? == 0 ];then
			echo "user user$num success add."
		else
			echo "failed add the user user$num"
		fi
	done
