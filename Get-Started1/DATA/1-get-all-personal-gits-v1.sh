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
AntergosCinnamon/
AntergosGnome/
AntergosI3/
AntergosMate/
AntergosOpenbox/
AntergosXfce4/
ArchBudgie/
ArchBudgieI3/
ArchCinnamon/
ArchGnome/
Archi3/
ArchMate/
ArchOpenbox/
ArchXfce4/
arcolinux-arc-themes/
arcolinux-nemesis/
Arc-Theme-Colora/
Arc-Theme-Colora-Collection/
Aureola/
GithubTutorial/
gnome-look/
halo-icons/
LinuxMint181i3/
LinuxMint18i3/
Mint-Y-Colora-Theme/
Mint-Y-Colora-Theme-Collection/
neofetch/
Numix-Circle-Arc/
papirus-icon-theme/
Plank-Themes/
Sardi/
Sardi-Colora-Variations/
Sardi-Extra/
Sardi-Flat-Colora-Variations/
Sardi-Flat-Mixing/
Sardi-Flexible-Colora-Variations/
Sardi-Flexible-Luv-Colora-Variations/
Sardi-Flexible-Mixing/
Sardi-Flexible-Variations/
Sardi-Ghost-Flexible-Colora-Variations/
Sardi-Ghost-Flexible-Mixing/
Sardi-Ghost-Flexible-Variations/
Sardi-Mixing/
Sardi-Mono-Colora-Variations/
Sardi-Mono-Mixing/
Sardi-Mono-Numix-Colora-Variations/
Sardi-Mono-Papirus-Colora-Variations/
Sardi-Orb-Colora-Mixing/
Sardi-Orb-Colora-Variations/
Sardi-Vintage/
screenFetch/
Solus/
Solusi3/
Surfn/
Themes-Icons-Pack/
UbuntuBudgie16.10/
Ubuntu-Mate-16.10/
Ubuntu-Mate-17.04/
Ultimate-Linux-Mint-18.1-Cinnamon/
Ultimate-Linux-Mint-18.1-Mate/
Ultimate-Linux-Mint-18.1-Xfce/
Ultimate-Linux-Mint-18.2-Cinnamon/
Ultimate-Linux-Mint-18.3-Cinnamon/
Ultimate-Linux-Mint-18-Cinnamon/
Ultimate-Linux-Mint-18-Xfce/
Ultimate-Ubuntu-16.10/
Ultimate-Ubuntu-17.04/
Xubuntu-16.10/
)



count=0

for name in "${directories[@]}"; do
	count=$[count+1]
	tput setaf 1;echo "Github "$count;tput sgr0;
	# if there is no folder then make one
	git clone https://github.com/erikdubois/$name
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
done
