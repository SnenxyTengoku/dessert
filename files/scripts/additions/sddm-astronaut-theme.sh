#!/usr/bin/env bash
set -euox pipefail

# Ensure all required/used folders are created
mkdir -p /usr/share/sddm/themes

#
# SDDM Theme
#
cd /tmp
git clone https://github.com/Keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
rm -f /usr/share/sddm/themes/sddm-astronaut-theme/background.png
rm -f /usr/share/sddm/themes/sddm-astronaut-theme/README.md
rm -rf /usr/share/sddm/themes/sddm-astronaut-theme/Previews
rm -rf /usr/share/sddm/themes/sddm-astronaut-theme/Fonts
sed -i 's@HeaderText=""@HeaderText="erm. what the sigma?"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@PartialBlur="true"@PartialBlur="false"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@FullBlur=""@FullBlur="true"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@Font="Open Sans"@Font="Inter"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
