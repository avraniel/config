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
arcolinux-config/
arcolinux-config-awesome/
arcolinux-config-bspwm/
arcolinux-config-budgie/
arcolinux-config-cinnamon/
arcolinux-config-deepin/
arcolinux-config-dwm/
arcolinux-config-enlightenment/
arcolinux-config-gnome/
arcolinux-config-herbstluftwm/
arcolinux-config-i3wm/
arcolinux-config-icewm/
arcolinux-config-jwm/
arcolinux-config-live-session/
arcolinux-config-lxqt/
arcolinux-config-mate/
arcolinux-config-openbox/
arcolinux-config-plasma/
arcolinux-config-plasma-nemesis/
arcolinux-config-qtile/
arcolinux-config-spectrwm/
arcolinux-config-sway/
arcolinux-config-ukui/
arcolinux-config-xfce/
arcolinux-config-xmonad/
arcolinux-config-xtended/
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
