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

# mpdris2-rs systemd service
sed -i 's@Wants=mpd.service@Wants=mpd.service noctalia.service@g' /usr/lib/systemd/user/mpdris2-rs.service

# add desktop shells and utilities to their systemd services as wants
systemctl --global add-wants niri.service noctalia.service
systemctl --global add-wants niri.service swayidle-niri.service

systemctl --global add-wants mangowc.target noctalia.service
systemctl --global add-wants mangowc.target swayidle-mango.service
systemctl --global add-wants mangowc.target xdg-desktop-autostart.target # allows autostart entries to actually start under mangowc

systemctl --global add-wants noctalia.service mpdris2-rs.service # start mpdris2-rs after noctalia to prevent crashing for it starting before daemons are available
