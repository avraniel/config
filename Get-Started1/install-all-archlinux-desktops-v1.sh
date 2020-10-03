#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	  : 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# Awesome
# Bspwm
# Budgie
# Cinnamon
# Deepin
# Dwm
# Enlightenment
# Gnome
# Herbstluftwm
# I3wm
# Jwm
# Lxqt
# Mate
# Openbox
# Plasma
# Qtile
# Spectrwm
# Sway
# Ukui
# Xfce
# Xmonad

# Awesome
sudo pacman -S awesome vicious --noconfirm --needed
# Bspwm
sudo pacman -S bspwm --noconfirm --needed
# Budgie
sudo pacman -S budgie-desktop budgie-extras --noconfirm --needed
# Cinnamon
sudo pacman -S cinnamon --noconfirm --needed
# Deepin
sudo pacman -S deepin deepin-extra --noconfirm --needed
# Dwm
yay -S dwm --noconfirm --needed
# Enlightenment
sudo pacman -S enlightenment --noconfirm --needed
# Gnome
sudo pacman -S gnome gnome-extra --noconfirm --needed
# Herbstluftwm
sudo pacman -S herbstluftwm --noconfirm --needed
# I3wm
sudo pacman -S i3-gaps i3status --noconfirm --needed
# Jwm
sudo pacman -S jwm --noconfirm --needed
yay -S xdgmenumaker --noconfirm --needed
# Lxqt
sudo pacman -S lxqt --noconfirm --needed
# Mate
sudo pacman -S mate mate-extra --noconfirm --needed
# Openbox
sudo pacman -S openbox --noconfirm --needed
# Plasma
yes | sudo pacman -R xcursor-breeze --noconfirm
sudo pacman -S plasma --noconfirm --needed
# Qtile
sudo pacman -S qtile --noconfirm --needed
# Spectrwm
sudo pacman -S spectrwm --noconfirm --needed
# Sway
sudo pacman -S sway --noconfirm --needed
# Ukui
sudo pacman -S ukui --noconfirm --needed
# Xfce
sudo pacman -S xfce4 xfce4-goodies --noconfirm --needed
# Xmonad
sudo pacman -S xmonad xmobar xmonad-contrib haskell-dbus xmonad-utils --noconfirm --needed

#rest
sudo pacman -S sxhkd --noconfirm --needed
