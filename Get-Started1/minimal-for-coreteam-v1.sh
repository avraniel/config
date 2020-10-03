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
echo "## Select what you need                                    #####"
echo "################################################################"
echo

FIND='#PACKAGER="John Doe <john@doe.com>"'

echo
tput setaf 1
echo "################################################################"
echo "#####  Choose wisely - one time setup after clean install   ####"
echo "################################################################"
tput sgr0
echo
echo "Select the correct desktop"
echo
echo "0.  Do nothing"
echo "1.  Erik"
echo "2.  Marco"
echo "3.  Raniel"
echo "4.  John"
echo "5.  Steve"
echo "6.  Brad"
echo "7.  fake1"
echo "8.  fake2"
echo "9.  fake3"
echo "10. fake4"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "########################################"
      echo "We did nothing as per your request"
      echo "########################################"
      echo
      ;;

    1 )
      REPLACE='PACKAGER="Erik Dubois <erik.dubois@gmail.com>"'
      ;;
    2 )
			REPLACE='PACKAGER="Marco Obaid <marco.obaid@gmail.com>"'
      ;;
    3 )
			REPLACE='PACKAGER="Raniel Laguna <avraniel@gmail.com>"'
      ;;
    4 )
			REPLACE='PACKAGER="John Blevins <samurailostinjapan@gmail.com>"'
      ;;
    5 )
			REPLACE='PACKAGER="Steve Younger <coritanie@gmail.com>"'
      ;;
    6 )
			REPLACE='PACKAGER="Brad Heffernan <ph3onix83@gmail.com>"'
      ;;
    7 )
      echo
      ;;
    8 )
      echo
      ;;
    9 )
      echo
      ;;
    10 )
      echo
      ;;
    * )
      echo "#################################"
      echo "Choose the correct number"
      echo "#################################"
      ;;
esac

find /etc/makepkg.conf -type f -exec sudo sed -i "s/$FIND/$REPLACE/g" {} \;

echo "################################################################"
echo $REPLACE" is now the signer for the packages"
echo "################################################################"


cp -r ARCO ~

chmod +x -R ~/ARCO/*

count=0

for name in $(ls -d ~/ARCO/ARCOLINUX*/); do
	count=$[count+1]
	cd $name
	tput setaf 1;echo "Github "$count;tput sgr0;
	sh ./1-get-all*
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done

for name in $(ls -d ~/ARCO/CARLI*/); do
	count=$[count+1]
	cd $name
	tput setaf 1;echo "Github "$count;tput sgr0;
	sh ./1-get-all*
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done
