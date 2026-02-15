#!/usr/bin/env bash
set -euox pipefail

# Create theme directory
mkdir -p /artifacts/catppuccin-papirus/usr/share/icons

# Dependencies
dnf install -y git python3 python3-pip nodejs-npm
pip install --prefix=/usr clickgen
# Allow usage of yarn whenever
export COREPACK_ENABLE_DOWNLOAD_PROMPT=0
npm install -g corepack
cd /tmp
# Clone repository into /tmp/
git clone https://github.com/ful1e5/Bibata_Cursor
cd Bibata_Cursor
# Setup
yarn install
# Create cursors
# Bibata Latte Light
npx --yes cbmp -d 'svg/modern' -bc '<hex>' -oc '<hex>' -wc '<hex>'
# Bibata Latte Dark
npx --yes cbmp -d 'svg/modern' -bc '<hex>' -oc '<hex>' -wc '<hex>'
# Bibata Mocha Light
npx --yes cbmp -d 'svg/modern' -bc '<hex>' -oc '<hex>' -wc '<hex>'
# Bibata Mocha Dark
npx --yes cbmp -d 'svg/modern' -bc '<hex>' -oc '<hex>' -wc '<hex>'
# Install cursors
# Bibata Latte Light

# Bibata Latte Dark

# Bibata Mocha Light

# Bibata Mocha Dark
