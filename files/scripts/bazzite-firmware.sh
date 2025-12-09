#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -euo pipefail
# if shit breaks i at least know where it is
set -x

#
# Bazzite Firmware
#
# Downloads Bazzite's script for installing their own firmware during image building
dnf5 -y copr enable bazzite-org/bazzite
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ublue-os/bazzite/refs/heads/main/build_files/install-firmware
)"
dnf5 -y copr remove bazzite-org/bazzite