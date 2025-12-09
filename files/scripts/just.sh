#!/usr/bin/env bash


set -euox pipefail

#
# Justfiles
#
wget "https://raw.githubusercontent.com/ublue-os/bazzite/main/system_files/desktop/shared/usr/share/ublue-os/just/82-bazzite-waydroid.just" -O "/usr/share/ublue-os/just/82-waydroid.just"
wget "https://raw.githubusercontent.com/ublue-os/bazzite/main/system_files/desktop/shared/usr/share/ublue-os/just/81-bazzite-fixes.just" -O "/usr/share/ublue-os/just/81-bazzite-fixes.just"
wget "https://raw.githubusercontent.com/ublue-os/bazzite/main/system_files/desktop/shared/usr/share/ublue-os/just/83-bazzite-audio.just" -O "/usr/share/ublue-os/just/83-audio.just"
