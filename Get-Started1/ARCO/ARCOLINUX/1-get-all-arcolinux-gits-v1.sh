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
arcolinux-apps/
arcolinux-arc-themes-nico/
arcolinux-betterlockscreen/
arcolinux-bin/
arcolinux-common/
arcolinux-conky-collection/
arcolinux-conky-collection-plasma/
arcolinux-cron/
arcolinux-docs/
arcolinuxd-system-config
arcolinux-faces/
arcolinux-fonts/
arcolinux-geany/
arcolinux-glava-config/
arcolinux-kvantum/
arcolinux-kvantum-lxqt/
arcolinux-kvantum-plasma/
arcolinux-kvantum-theme-arc/
arcolinux-local-applications/
arcolinux-local-applications-plasma-hide/
arcolinux-local-xfce4/
arcolinux-logo/
arcolinux-logout/
arcolinux-logout-themes/
arcolinux-lxqt-applications-add/
arcolinux-lxqt-applications-hide/
arcolinux-mirrorlist/
arcolinux-mirrorlist-spinoff/
arcolinux-neofetch/
arcolinux-news/
arcolinux-nitrogen/
arcolinux-oblogout-themes/
arcolinux-obmenu-generator/
arcolinux-obmenu-generator-minimal/
arcolinux-obmenu-generator-xtended/
arcolinux-openbox-themes/
arcolinux-pipemenus/
arcolinux-plank/
arcolinux-plank-themes/
arcolinux-plasma-kservices/
arcolinux-polybar/
arcolinux-qt5/
arcolinux-qt5-plasma/
arcolinux-rofi/
arcolinux-rofi-themes/
arcolinux-root/
arcolinux-sddm-theme/
arcolinux-slimlock-themes/
arcolinux-spices/
arcolinux-system-config/
arcolinux-systemd-services/
arcolinux-system-installation/
arcolinux-termite-themes/
arcolinux-tint2/
arcolinux-tint2-themes/
arcolinux-tweak-tool/
arcolinux-variety/
arcolinux-wallpapers/
arcolinux-wallpapers-lxqt-dual/
arcolinux-welcome-app/
arcolinux-xfce4-panel-profiles/
arcolinux-xmobar/
arcolinux-zsh/
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
