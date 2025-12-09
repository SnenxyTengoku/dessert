#!/usr/bin/env bash


set -euox pipefail

#
# Floorp fixes
#
sed -i 's@/opt/floorp/floorp@/usr/lib/opt/floorp/floorp@g' /usr/bin/floorp
ln -sf /lib/opt/floorp/browser/chrome/icons/default/default128.png /usr/share/icons/hicolor/128x128/apps/floorp.png
ln -sf /lib/opt/floorp/browser/chrome/icons/default/default64.png /usr/share/icons/hicolor/64x64/apps/floorp.png
ln -sf /lib/opt/floorp/browser/chrome/icons/default/default48.png /usr/share/icons/hicolor/48x48/apps/floorp.png
ln -sf /lib/opt/floorp/browser/chrome/icons/default/default32.png /usr/share/icons/hicolor/32x32/apps/floorp.png
ln -sf /lib/opt/floorp/browser/chrome/icons/default/default16.png /usr/share/icons/hicolor/16x16/apps/floorp.png