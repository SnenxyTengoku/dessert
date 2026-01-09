#!/usr/bin/env bash


set -euox pipefail

cd /tmp
git clone https://github.com/catppuccin/kde.git catppuccinkde
cd catppuccinkde
sed -i 's@${XDG_DATA_HOME:-$HOME/.local/share}@/usr/share@g' /tmp/catppuccinkde/install.sh
chmod +x install.sh
# Latte
printf 'y\nn' | /tmp/catppuccinkde/install.sh 1 9 1
# Mocha
printf 'y\nn' | /tmp/catppuccinkde/install.sh 4 9 1

#
# Konsole
#
mkdir -p /etc/skel/.local/share/konsole
curl -sL -o /etc/skel/.local/share/konsole/catppuccin-mocha.colorscheme https://raw.githubusercontent.com/catppuccin/konsole/refs/heads/main/themes/catppuccin-mocha.colorscheme
curl -sL -o /etc/skel/.local/share/konsole/catppuccin-latte.colorscheme https://raw.githubusercontent.com/catppuccin/konsole/refs/heads/main/themes/catppuccin-latte.colorscheme