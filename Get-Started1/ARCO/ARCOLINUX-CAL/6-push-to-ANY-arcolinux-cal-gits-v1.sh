#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "This pushes all changes to the existing githubs"
echo "Scans the existing folders"

count=0

echo "Type comment of your commit"
read input

for name in $(ls -d */); do
	count=$[count+1]
	cd $name
	tput setaf 1;echo $name;echo "Github nr "$count;tput sgr0;
	git pull
	[ -d work ] && rm -rf work
	git add --all .
	git commit -m "$input"
	git push -u origin master
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done
