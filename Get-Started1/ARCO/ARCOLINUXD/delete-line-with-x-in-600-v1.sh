#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 		: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "What line do you want to be deleted?"
read FIND

find .  -name "600-software-from-ArcoLinux-repo-v*" -type f -exec sed -i "/$FIND/d" {} \;
