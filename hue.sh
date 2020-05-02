#!/bin/bash
#set -e

wal -c; wal -i /home/niel/DATA/wallpapers/; feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"

echo "done"