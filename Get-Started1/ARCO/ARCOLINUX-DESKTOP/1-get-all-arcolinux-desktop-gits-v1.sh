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
arcolinux-awesome/
arcolinux-bspwm/
arcolinux-budgie/
arcolinux-cinnamon/
arcolinux-deepin/
arcolinux-dwm/
arcolinux-enlightenment/
arcolinux-gnome/
arcolinux-herbstluftwm/
arcolinux-i3wm/
arcolinux-icewm/
arcolinux-jwm/
arcolinux-lxqt/
arcolinux-mate/
arcolinux-openbox/
arcolinux-openbox-xtended/
arcolinux-plasma/
arcolinux-plasma-nemesis/
arcolinux-qtile/
arcolinux-spectrwm/
arcolinux-sway/
arcolinux-ukui/
arcolinux-xfce/
arcolinux-xmonad-polybar/
arcolinux-xmonad-xmobar/
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
