#!/usr/bin/env bash

set -euox pipefail

# Catppuccinify SDDM theme
sed -i 's@TextColor="#F8F8F2"@TextColor="#cdd6f4"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@HighlightColor="#343746"@HighlightColor="#a6e3a1"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@BackgroundColor="#21222C"@BackgroundColor="#1e1e2e"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@PlaceholderColor="#bbbbbb"@PlaceholderColor="#6c7086"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@SystemButtonsIconColor="#ffffff"@SystemButtonsIconColor="#cdd6f4"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
rm -f /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/1.png
ln -sf /usr/share/backgrounds/catppuccin/black-hole-mocha.png /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/1.png

# Plasma Panel Colorizer fixes
mkdir -p /usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer/contents/ui/tools
curl -sL -o /usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer/contents/ui/tools/list_presets.sh https://raw.githubusercontent.com/luisbocanegra/plasma-panel-colorizer/refs/heads/main/package/contents/ui/tools/list_presets.sh
curl -sL -o /usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer/contents/ui/tools/gdbus_get_signal.sh https://raw.githubusercontent.com/luisbocanegra/plasma-panel-colorizer/refs/heads/main/package/contents/ui/tools/gdbus_get_signal.sh
chmod +x /usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer/contents/ui/tools/list_presets.sh
chmod +x /usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer/contents/ui/tools/gdbus_get_signal.sh