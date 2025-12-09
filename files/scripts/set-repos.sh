#!/usr/bin/env bash


set -euox pipefail

# Manually set repos as mirrors.fedoraproject.org tends to fail a lot
# Choose from https://mirrormanager.fedoraproject.org/mirrors/Fedora/42/x86_64

dnf config-manager --add-repo https://cofractal-sea.mm.fcix.net/fedora/linux/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://ftp-chi.osuosl.org/pub/fedora/linux/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://fedora.mirror.constant.com/fedora/linux/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://na.edge.kernel.org/fedora/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://mirror.web-ster.com/fedora/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://mirror.us.mirhosting.net/fedora/linux/releases/$releasever/Everything/$basearch/os/
dnf config-manager --add-repo https://mirror.lstn.net/fedora/releases/$releasever/Everything/$basearch/os/