#!/usr/bin/env bash
set -euox pipefail

#
# Catppuccin Papirus-folders
#
cd /tmp
git clone https://github.com/catppuccin/papirus-folders.git catppuccin-papirus-folders
cp -r /tmp/catppuccin-papirus-folders/src/* /usr/share/icons/Papirus
git clone https://github.com/PapirusDevelopmentTeam/papirus-folders
cd papirus-folders
chmod +x papirus-folders
./papirus-folders -t Papirus-Light -C cat-latte-green
./papirus-folders -t Papirus-Dark -C cat-mocha-green
