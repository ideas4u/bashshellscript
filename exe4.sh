#!/bin/bash
#about the file owner and group owner.
#
dirName=/tmp/scripttest
mkdir $dirName
useradd testuser1
useradd testuser2
for num in {1..20}
	do
		touch $dirName/tfile$num
		if [ "$num" -lt 11 ];then
			chown testuser1:testuser1 $dirName/tfile$num	
		else
			chown testuser2:testuser2 $dirName/tfile$num
		fi
	done

