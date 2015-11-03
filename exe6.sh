#!/bin/bash
#count the number of file in /bin /usr/bin /sbin /usr/sbin.
#
for dir in /bin /usr/bin /sbin /usr/sbin
	do
		echo "$dir has `ls $dir/ | wc -l` files."

	done
