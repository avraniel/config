#!/bin/bash
set -e
##################################################################################################################
# Author	:	Raniel Laguna
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#dependencies

sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

yay -Syu --noconfirm

sudo pacman -S lib32-fontconfig  --needed --noconfirm
sudo pacman -S lib32-libpng12 --needed --noconfirm
sudo pacman -S lib32-libsm --needed --noconfirm
sudo pacman -S lib32-libxinerama --needed --noconfirm
sudo pacman -S lib32-libxrender --needed --noconfirm
sudo pacman -S lib32-libjpeg6-turbo --needed --noconfirm
sudo pacman -S lib32-libxtst --needed --noconfirm
sudo pacman -S lib32-dbus --needed --noconfirm
sudo pacman -S lib32-freetype2 --needed --noconfirm

# wget https://archive.archlinux.org/packages/l/lib32-freetype2/lib32-freetype2-2.8-2-x86_64.pkg.tar.xz
# sudo pacman -U lib32-freetype2-2.8-2-x86_64.pkg.tar.xz --needed --noconfirm
# rm ./lib32-freetype2-2.8-2-x86_64.pkg.tar.xz

package="teamviewer"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		echo "################################################################"
		echo "################## "$package" is already installed"
		echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with yay"
		echo "################################################################"
		yay -S --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with trizen"
		echo "################################################################"
		trizen -S --noconfirm --needed --noedit $package

	elif pacman -Qi yaourt &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with yaourt"
		echo "################################################################"
		yaourt -S --noconfirm $package

	elif pacman -Qi pacaur &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with pacaur"
		echo "################################################################"
		pacaur -S --noconfirm --noedit  $package

	elif pacman -Qi packer &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with packer"
		echo "################################################################"
		packer -S --noconfirm --noedit  $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "Teamviewer needs 32 bits applications"
	echo "Go to /etc/pacman.conf and edit these lines"
	echo "[multilib]"
	echo "Include = /etc/pacman.d/mirrorlist"
	echo "Include this mirrorlist as well"
	sleep 2
	fi

fi

sudo systemctl enable teamviewerd.service
sudo systemctl start teamviewerd.service

sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed vivaldi-ffmpeg-codecs
sudo pacman -S --noconfirm --needed vivaldi-widevine

yay -S zoom --noconfirm

sudo pacman -S discord --noconfirm
sudo pacman -S telegram-desktop --noconfirm
yay -S blockify-git --noconfirm
yay -S qtwebflix-git --noconfirm
yay -S polybar --noconfirm
yay -S dropbox --noconfirm
yay -S papirus-icon-theme --noconfirm
yay -S arc-icon-theme --noconfirm
yay -S adapta-gtk-theme --noconfirm

yay -S breeze-obsidian-cursor-theme --noconfirm

yay -S faba-icon-theme --noconfirm
yay -S halo-icons-git --noconfirm
yay -S moka-icon-theme --noconfirm
yay -S paper-icon-theme --noconfirm
yay -S zafiro-icon-theme --noconfirm
yay -S xcursor-simpleandsoft --noconfirm
yay -S popcorntime-bin --noconfirm

cp -Rf ~/DATA/config/{termite,neofetch,polybar,openbox,variety,ranger} ~/.config
cp ~/DATA/config/.bashrc-personal ~/.bashrc-personal
cp ~/DATA/config/pipes-diagonal ~/.bin
cp ~/DATA/config/.zshrc ~/
cp ~/DATA/config/.zshrc-personal ~/
sudo chsh niel -s /bin/zsh
sudo cp -Rfv ~/DATA/config/lightdm.conf /etc/lightdm/lightdm.conf

~/.bin/main/700-fun-apps-for-screenshots-v6.sh

cp ~/.bashrc-latest ~/.bashrc && source ~/.bashrc && sudo cp /etc/skel/.bashrc-latest /etc/skel/.bashrc

sudo reboot
