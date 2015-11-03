#!/bin/bash
#

TestFunc(){
	declare -i A=10
 	local A=20
	echo $A
}

echo "Out :$A"
TestFunc
echo "Out :$A"
