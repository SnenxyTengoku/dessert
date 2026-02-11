#!/usr/bin/env bash


set -euox pipefail

# Firefox customizations
git clone https://github.com/soulhotel/FF-ULTIMA /etc/skel/.mozilla/firefox/default-profile/chrome # FF ULTIMA is our theme of choice, we provide a custom user.js based off of Betterfox merged with the themes'
sed -i 's@rgb(70, 63, 77)@rgb(166, 227, 161)@g' /etc/skel/.mozilla/firefox/default-profile/chrome/theme/color-schemes/catppuccin-mocha/ffu-colorscheme.css # use green accent for catppuccin theme

# Catppuccinify SDDM theme
sed -i 's@TextColor="#F8F8F2"@TextColor="#cdd6f4"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@HighlightColor="#343746"@HighlightColor="#a6e3a1"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@BackgroundColor="#21222C"@BackgroundColor="#1e1e2e"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@PlaceholderColor="#bbbbbb"@PlaceholderColor="#6c7086"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
sed -i 's@SystemButtonsIconColor="#ffffff"@SystemButtonsIconColor="#cdd6f4"@g' /usr/share/sddm/themes/sddm-astronaut-theme/Themes/astronaut.conf
rm -f /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/1.png
ln -sf /usr/share/backgrounds/catppuccin/black-hole-mocha.png /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/1.png

# MPD Discord RPC systemd service
curl -sL -o /usr/lib/systemd/user/mpd-discord-rpc.service https://raw.githubusercontent.com/JakeStanger/mpd-discord-rpc/master/mpd-discord-rpc.service

# Rescrobbled systemd service
curl -sL -o /usr/lib/systemd/user/rescrobbled.service https://raw.githubusercontent.com/InputUsername/rescrobbled/master/rescrobbled.service
sed -i 's@ExecStart=%h/.cargo/bin/rescrobbled@ExecStart=/usr/bin/rescrobbled@g' /usr/lib/systemd/user/rescrobbled.service # set correct bin location
sed -i 's@ExecStart=%h/.cargo/bin/rescrobbled@ExecStart=/usr/bin/rescrobbled@g' /usr/lib/systemd/user/rescrobbled.service # start it after noctalia shell starts to prevent startup issues

# mpdris2-rs systemd service
curl -sL -o /usr/lib/systemd/user/mpdris2-rs.service https://raw.githubusercontent.com/szclsya/mpdris2-rs/refs/heads/trunk/misc/mpdris2-rs.service
sed -i 's@Wants=mpd.service@Wants=mpd.service noctalia.service@g' /usr/lib/systemd/user/mpdris2-rs.service

# tlrc files
curl -sL -o /usr/share/bash-completion/completions/tldr https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/tldr.bash
curl -sL -o /usr/share/zsh/site-functions/_tldr https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/_tldr
curl -sL -o /usr/share/fish/vendor_completions.d/tldr.fish https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/tldr.fish
curl -sL -o /usr/share/man/man1/tldr.1 https://raw.githubusercontent.com/tldr-pages/tlrc/main/tldr.1