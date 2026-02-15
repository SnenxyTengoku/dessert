#!/usr/bin/env bash
set -euox pipefail

#
# Papirus icon pack (From source)
#
cd /tmp
wget -qO- https://git.io/papirus-icon-theme-install | sh
