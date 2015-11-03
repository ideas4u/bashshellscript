#!/bin/bash
#
#

declare -i A=10
built(){
	declare -i A=10

	echo $A
}
show(){
	declare -i A=30
	echo $A
}
echo $A
show
build
echo $A
