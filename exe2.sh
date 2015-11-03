#!/bin/bash
#list the context type of the the file in /var/log
#
touch /tmp/filetype.var.log
for fileName in /var/log/*
	do
		file $fileName >> /tmp/filetype.var.log
	done
cat -n /tmp/filetype.var.log
