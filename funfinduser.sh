#!/bin/bash
#

ShowUserInfo(){
	[ $# -lt 1 ] && return 6
	grep "^$1\>" /etc/passwd | cut -d: -f3,7 
}
function main{
while true; do
read -p "Plz enter a user name:" userName
if [ "$userName" == 'quit' ];then
	echo "Quit"
	exit 0
fi
if ! id $userName &> /dev/null; then
	echo "No such user,please again."
	continue

fi
ShowUserInfo $userName
done
}
main
