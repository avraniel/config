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

echo "################################################################"
echo "## Fixing : PACKAGER should have the format...             #####"
echo "## Remember to change the name in this script              #####"
echo "################################################################"
echo
FIND='#PACKAGER="John Doe <john@doe.com>"'
#change into your own name ;-)
REPLACE='PACKAGER="Erik Dubois <erik.dubois@gmail.com>"'

tput setaf 2;echo "CTRL + C will stop the script from running";tput sgr0
tput setaf 1;echo "Did you change the name and email address?";tput sgr0
echo
countdown() {
  secs=5
  while [ $secs -gt 0 ]
  do
    printf "\r\033[KScript will continue in %.d seconds " $((secs--))
    sleep 1
  done
  echo
}

countdown

find /etc/makepkg.conf -type f -exec sudo sed -i "s/$FIND/$REPLACE/g" {} \;
echo "################################################################"
echo "####                     makepkg corrected                ######"
echo "################################################################"

sudo pacman -Syyu --noconfirm

yay -Syu --noconfirm
sudo pacman -S --noconfirm --needed lastpass

cp -r ARCOLINUX* ~
cp -r DATA ~
cp -r CARLI ~
cp -r VirtualBox\ VMs/ ~

chmod +x ~/ARCOLINUX*/*
chmod +x ~/DATA/*

cd ~/DATA

[ -d ~/DATA/arcolinux-nemesis ] || git clone https://github.com/erikdubois/arcolinux-nemesis

cd ~/DATA/arcolinux-nemesis

git pull

sh 100-install-core-software*
sh 200-software-AUR-repo*
sh 300-sardi-extra-icons-AUR-repo*
sh 310-sardi-mint-y-icons-AUR-repo*
sh 320-surfn-mint-y-icons-git-AUR-repo*

cd ~/DATA/arcolinux-nemesis/Personal

sh 900-install-personal-settings-folders*
sh 905-install-personal-settings-bookmarks*
sh 910-firefox-fix-unreadable-text-for-dark-themes-settings*
sh 915-install-personal-settings-screenshot-to-jpg*
#sh 920-fix-simplescreencorder-icons*
#sh 925-fix-sublime-text-icons*
sh 930-autostart-applications*
#sh 935-plasma-specific-applications-and-setttings*
#sh 950-install-all-fonts-needed-for-conkys-of-arcolinux*
sh 955-install-settings-autoconnect-to-bluetooth-headset-v*
#sh 960-ckb-next-v*
sh 965-install-key-servers-v*
tput setaf 1
echo "################################################################"
echo "DO NOT INSTALL THIS"
echo "JUST FOR THE COMPUTER OF ERIK DUBOIS"
echo "INTEL BASED GRAPHICAL CARD"
echo "################################################################"
tput sgr0
sh 999-install-settings-for-X11-intel-ONLY-FOR-SSD-NOT-VIRTUAL-BOX*

cd ~/VirtualBox\ VMs/
tar -xzf template.tar.gz
rm template.tar.gz

count=0

for name in $(ls -d ~/ARCOLINUX*/); do
	count=$[count+1]
	cd $name
	tput setaf 1;echo "Github "$count;tput sgr0;
	sh ./1-get-all*
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done

for name in $(ls -d ~/CARLI*/); do
	count=$[count+1]
	cd $name
	tput setaf 1;echo "Github "$count;tput sgr0;
	sh ./1-get-all*
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done
