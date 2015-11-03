#!/bin/bash
#
debug=0
while [ $# -ge 1 ]; do
	case $1 in
	 -i|--interface)
	  ethcard="$2"
	  shift 2
	  ;;
	 -v|--verbose)
	  debug=1
	  shift
	  ;;
	 *)
	   echo "Wrong options or arguments."
	   echo "Usage: `basename $0` [-v|--verbose] -i|--interface Interface"
	   shift $#
	   ;;
	 esac
done
echo $ethcard $debug
#]echo "Interface=$ethcard, debug=$debug"
! ifconfig $ethcard &> /dev/null && echo "No this interface" && exit 3

read -p "Enter an alias:" ethAlias

read -p "Enter IP:" ipAddr

read -p "Mask:" netMask

ifconfig $ethAlias $ipAddr netmask $netMask

[ $debug -eq 1 ] && ifconfig $ethAlias





