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
arcob-calamares-config-awesome/
arcob-calamares-config-bspwm/
arcob-calamares-config-budgie/
arcob-calamares-config-cinnamon/
arcob-calamares-config-deepin/
arcob-calamares-config-dwm/
arcob-calamares-config-enlightenment/
arcob-calamares-config-gnome/
arcob-calamares-config-herbstluftwm/
arcob-calamares-config-i3/
arcob-calamares-config-jwm/
arcob-calamares-config-lxqt/
arcob-calamares-config-mate/
arcob-calamares-config-next/
arcob-calamares-config-openbox/
arcob-calamares-config-plasma/
arcob-calamares-config-qtile/
arcob-calamares-config-spectrwm/
arcob-calamares-config-sway/
arcob-calamares-config-ukui/
arcob-calamares-config-xfce/
arcob-calamares-config-xmonad/
arcob-calamares-config-xtended/
arco-calamares-config/
arco-calamares-config-dev/
arco-calamares-config-next/
arcod-calamares-config/
arcod-calamares-config-dev/
arcod-calamares-config-next/
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
