#!/bin/bash
#
if  [ $# -eq 0 ]
	then
		echo "Please specify a file!"
else
rm $1
echo "File $1 is deleted!"

fi

