#!/usr/bin/env bash


set -euox pipefail

#
# Zen Browser fixes
#
sed -i 's@/opt/zen/zen@/usr/lib/opt/zen/zen@g' /usr/bin/zen-browser
ln -sf /lib/opt/zen/browser/chrome/icons/default/default128.png /usr/share/icons/hicolor/128x128/apps/zen-browser.png
ln -sf /lib/opt/zen/browser/chrome/icons/default/default64.png /usr/share/icons/hicolor/64x64/apps/zen-browser.png
ln -sf /lib/opt/zen/browser/chrome/icons/default/default48.png /usr/share/icons/hicolor/48x48/apps/zen-browser.png
ln -sf /lib/opt/zen/browser/chrome/icons/default/default32.png /usr/share/icons/hicolor/32x32/apps/zen-browser.png
ln -sf /lib/opt/zen/browser/chrome/icons/default/default16.png /usr/share/icons/hicolor/16x16/apps/zen-browser.png
