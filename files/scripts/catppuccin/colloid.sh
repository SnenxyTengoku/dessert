#!/usr/bin/env bash
set -euox pipefail

#
# Colloid - Catppuccin Color Scheme
#
cd /tmp
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
chmod +x install.sh; ./install.sh -b -s catppuccin -t green -d /usr/share/icons
