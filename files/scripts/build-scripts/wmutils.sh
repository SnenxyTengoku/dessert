#!/usr/bin/env bash


set -euo pipefail

# dependencies
dnf install -y git gcc gcc-c++ cmake openssl protobuf protobuf-devel protobuf-compiler openssl-devel dbus-devel pkgconf-pkg-config rust-rustix-devel rustup cargo
mkdir -p /artifacts/wmutils-built/usr/bin

# Stasis - https://github.com/saltnpepper97/stasis
cd /tmp
git clone https://github.com/saltnpepper97/stasis.git
cd stasis
cargo install --path . --root /artifacts/wmutils-built/usr