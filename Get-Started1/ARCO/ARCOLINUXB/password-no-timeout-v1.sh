#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "################################################################"
echo "#####                for long building scripts            ######"
echo "################################################################"

echo "Type this code at the bottom and REBOOT"

echo "Defaults timestamp_timeout=-1"
echo "write this code under this line"
echo "# %wheel ALL=(ALL) ALL"

EDITOR=nano sudo visudo

echo "################################################################"
echo "###################          REBOOT       ######################"
echo "################################################################"
