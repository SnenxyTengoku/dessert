#!/usr/bin/env bash


set -euox pipefail
# vars
HI_COLOR=/usr/share/icons/hicolor
BRANCH=stable

#
# moonlight launcher
# Their install script basically does everything for us, so we can just run their script as is.
sh -c "$(curl -fsSL https://github.com/MeguminSama/moonlight-launcher/releases/latest/download/install.sh)"

# their desktop entry is just called "moonlight" which conflicts with icons and uses the moonlight streaming service icon. we rename it to prevent this
mv /usr/share/applications/moonlight.desktop /usr/share/applications/moonlight-launcher-$BRANCH.desktop
sed -i "s@Name=moonlight@Name=moonlight launcher@g" /usr/share/applications/moonlight-launcher-$BRANCH.desktop
# move icons respectively
mv $HI_COLOR/16x16/apps/moonlight-$BRANCH.png $HI_COLOR/16x16/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/32x32/apps/moonlight-$BRANCH.png $HI_COLOR/32x32/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/48x48/apps/moonlight-$BRANCH.png $HI_COLOR/48x48/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/64x64/apps/moonlight-$BRANCH.png $HI_COLOR/64x64/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/128x128/apps/moonlight-$BRANCH.png $HI_COLOR/128x128/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/256x256/apps/moonlight-$BRANCH.png $HI_COLOR/256x256/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/512x512/apps/moonlight-$BRANCH.png $HI_COLOR/512x512/apps/moonlight-launcher-$BRANCH.png
mv $HI_COLOR/1024x1024/apps/moonlight-$BRANCH.png $HI_COLOR/1024x1024/apps/moonlight-launcher-$BRANCH.png