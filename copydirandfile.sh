#!/bin/bash
# copy the command that user input to /mnt/sysroot/bin/.
#and the all lib file to it.
#date 2014/11/17
#author xiewygz
#email:xiewygz@163.com

read_command(){

	read -p "Plz Enter a command: " command
}
read_command
ldd_File=/tmp/ldd.out
ldd `which $command` > $ldd_File 
cat $ldd_File
grep -n -o "/[^[:space:]]\{1,\}" $ldd_File 


