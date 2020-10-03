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

echo "This updates the existing githubs"
echo "Fill the array with the original folders first"

# use ls -d */ > list to get the list of the created githubs and copy/paste in

directories=(
arcolinux-wallpapers-submicron1-1920x1080-1080hd/
arcolinux-wallpapers-submicron1-2560x1440-wqhd/
arcolinux-wallpapers-submicron1-3840x2400-wquxga/
arcolinux-wallpapers-submicron-1680x1050-wsxga/
arcolinux-wallpapers-submicron2-1920x1080-1080hd/
arcolinux-wallpapers-submicron2-2560x1440-wqhd/
arcolinux-wallpapers-submicron2-3840x2400-wquxga/
arcolinux-wallpapers-submicron3-2560x1440-wqhd/
arcolinux-wallpapers-submicron3-3840x2400-wquxga/
arcolinux-wallpapers-submicron4-2560x1440-wqhd/
arcolinux-wallpapers-submicron4-3840x2400-wquxga/
arcolinux-wallpapers-submicron-5120x2880-5K/
arcolinux-wallpapers-submicron5-2560x1440-wqhd/
arcolinux-wallpapers-submicron5-3840x2400-wquxga/
arcolinux-wallpapers-submicron-5760x1080-highres/
arcolinux-wallpapers-submicron6-2560x1440-wqhd/
arcolinux-wallpapers-submicron6-3840x2400-wquxga/
arcolinux-wallpapers-submicron7-3840x2400-wquxga/
arcolinux-wallpapers-submicron-7680x1440-highres/
arcolinux-wallpapers-submicron8-3840x2400-wquxga/
)

count=0

for name in "${directories[@]}"; do
	count=$[count+1]
	tput setaf 1;echo "Github "$count;tput sgr0;
	# if there is no folder then make one
	git clone https://github.com/arcolinux/$name
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
done
