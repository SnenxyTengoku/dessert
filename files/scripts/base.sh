#!/usr/bin/env bash

set -euox pipefail

# ensure custom scripts are executable
chmod +x /usr/bin/unfuck-music
chmod +x /usr/bin/dns-toggle

# MPD Discord RPC systemd service
curl -sL -o /usr/lib/systemd/user/mpd-discord-rpc.service https://raw.githubusercontent.com/JakeStanger/mpd-discord-rpc/master/mpd-discord-rpc.service

# Rescrobbled systemd service
curl -sL -o /usr/lib/systemd/user/rescrobbled.service https://raw.githubusercontent.com/InputUsername/rescrobbled/master/rescrobbled.service
sed -i 's@ExecStart=%h/.cargo/bin/rescrobbled@ExecStart=/usr/bin/rescrobbled@g' /usr/lib/systemd/user/rescrobbled.service # set correct bin location

# mpdris2-rs systemd service
curl -sL -o /usr/lib/systemd/user/mpdris2-rs.service https://raw.githubusercontent.com/szclsya/mpdris2-rs/refs/heads/trunk/misc/mpdris2-rs.service
sed -i 's@ExecStart=/usr/local/bin/mpdris2-rs@ExecStart=/usr/bin/mpdris2-rs@g' /usr/lib/systemd/user/mpdris2-rs.service # set correct bin location
sed -i 's@Wants=mpd.service@Wants=mpd.service noctalia.service@g' /usr/lib/systemd/user/mpdris2-rs.service # start it after noctalia shell starts to prevent startup issues

# tlrc files
curl -sL -o /usr/share/bash-completion/completions/tldr https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/tldr.bash
curl -sL -o /usr/share/zsh/site-functions/_tldr https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/_tldr
curl -sL -o /usr/share/fish/vendor_completions.d/tldr.fish https://raw.githubusercontent.com/tldr-pages/tlrc/main/completions/tldr.fish
curl -sL -o /usr/share/man/man1/tldr.1 https://raw.githubusercontent.com/tldr-pages/tlrc/main/tldr.1