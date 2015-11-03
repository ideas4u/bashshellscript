#!/bin/bash
#
mkFile(){
	touch $3
	echo "#!/bin/bash" >> $3
	echo "#Description: $1" >> $3
	echo "#Author: $2" >> $3
	echo "#" >> $3
}
mkFile $*

