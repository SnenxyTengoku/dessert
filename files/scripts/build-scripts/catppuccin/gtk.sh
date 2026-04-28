#!/usr/bin/env bash
set -euox pipefail

# Originally, this script used the official catppuccin gtk repo, but that has since been archived.
# However, the theme it was based on, Colloid, includes catppuccin officially, so we just use that now.

# Create theme directory
mkdir -p /artifacts/catppuccin-gtk/usr/share/themes

# Dependencies to create theme
dnf install -y git sassc inkscape optipng gtk-murrine-engine
cd /tmp
# Clone repository into /tmp/gtk
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
# Install theme
# NOTE: Specifying "catpuccin black" is mocha.
chmod +x install.sh
./install.sh -d /artifacts/catppuccin-gtk/usr/share/themes -c dark -t green -s standard --tweaks catppuccin black
./install.sh -d /artifacts/catppuccin-gtk/usr/share/themes -c light -t green -s standard --tweaks catppuccin
