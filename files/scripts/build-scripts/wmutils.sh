#!/usr/bin/env bash


set -euo pipefail

# dependencies
dnf install -y git gcc gcc-c++ cmake meson pkgconf openssl protobuf protobuf-devel protobuf-compiler openssl-devel dbus-devel pkgconf-pkg-config rust-rustix-devel rustup cargo
mkdir -p /artifacts/wmutils-built/usr/bin

# Stasis - https://github.com/saltnpepper97/stasis
#cd /tmp
#git clone https://github.com/saltnpepper97/stasis.git
#cd stasis
#cargo install --path . --root /artifacts/wmutils-built/usr

# SwayAudioIdleInhibit - https://github.com/ErikReider/SwayAudioIdleInhibit
cd /tmp
git clone https://github.com/ErikReider/SwayAudioIdleInhibit
cd SwayAudioIdleInhibit
meson setup build -Dlogind-provider=systemd
meson compile -C build --prefix /usr
meson install -C build --destdir "/artifacts/wmutils-built"