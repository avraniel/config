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



sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed vivaldi-ffmpeg-codecs

yay -S blockify-git --noconfirm
yay -S qtwebflix-git --noconfirm
yay -S polybar --noconfirm
yay -S dropbox --noconfirm
yay -S papirus-icon-theme --noconfirm
yay -S arc-icon-theme --noconfirm
yay -S adapta-gtk-theme --noconfirm

yay -S xcursor-breeze-serie-obsidian --noconfirm

yay -S faba-icon-theme --noconfirm
yay -S halo-icons-git --noconfirm
yay -S moka-icon-theme --noconfirm
yay -S paper-icon-theme --noconfirm
yay -S zafiro-icon-theme --noconfirm
yay -S xcursor-simpleandsoft --noconfirm
yay -S popcorntime-bin --noconfirm
yay -S oh-my-bash-git --noconfirm --needed

cp -Rf ~/DATA/config/{termite,neofetch,polybar,openbox,rofi,variety,ranger} ~/.config
cp ~/DATA/config/.bashrc-personal ~/.bashrc-personal
cp ~/DATA/config/pipes-diagonal ~/.bin
cp -Rf ~/DATA/config/.cache ~/.cache
cp ~/DATA/config/.zshrc ~/
cp ~/DATA/config/.zshrc-personal ~/
sudo cp -Rfv ~/DATA/config/lightdm.conf /etc/lightdm/lightdm.conf
cp -Rfv ~/DATA/config/.bashrc ~/.bashrc


sudo reboot
