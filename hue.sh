#!/bin/bash
#set -e


wal -c; wal -i /home/niel/DATA/wallpapers/; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"

#echo "done"