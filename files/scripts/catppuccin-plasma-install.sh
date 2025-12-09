#!/usr/bin/env bash


set -euox pipefail

#
# KDE Theme
#
cd /tmp
git clone https://github.com/catppuccin/kde.git catppuccinkde
cd catppuccinkde
sed -i 's@${XDG_DATA_HOME:-$HOME/.local/share}@/usr/share@g' /tmp/catppuccinkde/install.sh
chmod +x install.sh
# Latte
printf 'y\nn' | /tmp/catppuccinkde/install.sh 1 9 1
# Mocha
printf 'y\nn' | /tmp/catppuccinkde/install.sh 4 9 1