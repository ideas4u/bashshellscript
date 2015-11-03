#!/bin/bash

ShowMenu(){
cat << EOF
disk) show disk info
mem) show memory info
cpu) show cpuinfo
EOF
}
main(){
ShowMenu
read -p "Plz choose an option:" option

case $option in
disk)
	df -h
;;
mem)
	free -m
;;
cpu)
	cat /proc/cpuinfo
;;
*)
	echo "Wrong option"
esac
}
main
