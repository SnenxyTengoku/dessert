#!/usr/bin/env bash
set -euox pipefail

# Dependency and folder
dnf install -y git gcc gcc-c++ cmake openssl protobuf protobuf-devel protobuf-compiler openssl-devel dbus-devel pkgconf-pkg-config rust-rustix-devel rustup cargo
mkdir -p /artifacts/cargo-built/usr/bin

# MPD Discord RPC - https://github.com/JakeStanger/mpd-discord-rpc
cargo install mpd-discord-rpc --locked --root /artifacts/cargo-built/usr

# Rescrobbled - https://github.com/InputUsername/rescrobbled
cargo install rescrobbled --root /artifacts/cargo-built/usr

# mpdris2-rs - https://github.com/szclsya/mpdris2-rs
cd /tmp
git clone https://github.com/szclsya/mpdris2-rs.git
cd mpdris2-rs
cargo install --path . --root /artifacts/cargo-built/usr

# tlrc - https://github.com/tldr-pages/tlrc
cargo install tlrc --locked --root /artifacts/cargo-built/usr

# emoji-gen - https://activitypub.software/Amelia/emoji-gen
cd /tmp
git clone https://git.gay/sneexy/emoji-gen.git
cd emoji-gen
cargo install --path . --root /artifacts/cargo-built/usr
