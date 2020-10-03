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
arcolinux-awesome-dconf/
arcolinux-bspwm-dconf/
arcolinux-budgie-dconf/
arcolinux-cinnamon-dconf/
arcolinux-dconf/
arcolinux-deepin-dconf/
arcolinux-dwm-dconf/
arcolinux-enlightenment-dconf/
arcolinux-gnome-dconf/
arcolinux-herbstluftwm-dconf/
arcolinux-i3wm-dconf/
arcolinux-icewm-dconf/
arcolinux-jwm-dconf/
arcolinux-lxqt-dconf/
arcolinux-mate-dconf/
arcolinux-openbox-dconf/
arcolinux-plasma-dconf/
arcolinux-plasma-nemesis-dconf/
arcolinux-qtile-dconf/
arcolinux-spectrwm-dconf/
arcolinux-sway-dconf/
arcolinux-ukui-dconf/
arcolinux-xfce-dconf/
arcolinux-xmonad-dconf/
arcolinux-xtended-dconf/
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
