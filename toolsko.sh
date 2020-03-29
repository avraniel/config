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
#sudo pacman -S --noconfirm --needed vivaldi-widevine

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

yay -S xcursor-breeze-serie-obsidian --noconfirm

yay -S faba-icon-theme --noconfirm
yay -S halo-icons-git --noconfirm
yay -S moka-icon-theme --noconfirm
yay -S paper-icon-theme --noconfirm
yay -S zafiro-icon-theme --noconfirm
yay -S xcursor-simpleandsoft --noconfirm
yay -S hefftor-wallpapers-git --noconfirm --needed
yay -S popcorntime-bin --noconfirm
yay -S oh-my-bash-git --noconfirm --needed

cp -Rf ~/DATA/config/{termite,neofetch,polybar,openbox,rofi,ranger} ~/.config
cp ~/DATA/config/.bashrc-personal ~/.bashrc-personal
cp ~/DATA/config/pipes-diagonal ~/.bin
cp -Rf ~/config_laptop/.config/.cache ~/.cache
cp ~/DATA/config/.zshrc ~/
cp ~/DATA/config/.zshrc-personal ~/
#sudo chsh niel -s /bin/zsh
sudo cp -Rfv ~/DATA/config/lightdm.conf /etc/lightdm/lightdm.conf

~/.bin/main/700-fun-apps-for-screenshots-v6.sh

#cp ~/.bashrc-latest ~/.bashrc && source ~/.bashrc && sudo cp /etc/skel/.bashrc-latest /etc/skel/.bashrc
cp -Rfv ~/DATA/config/.bashrc ~/.bashrc


sudo reboot
