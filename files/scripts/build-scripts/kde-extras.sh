#!/usr/bin/env bash

#
# This script mass builds multiple plasma, kwin and other types of extensions for the wuzetka image.
#



set -euo pipefail

# Create directory where all compiled things go into
mkdir -p /artifacts/kde-extras-built

#
# Dependencies
#
dnf install -y git gcc-c++ cmake gn perl-YAML-LibYAML ninja-build git-clang-format clang-devel libdrm extra-cmake-modules glibc-gconv-extra gettext boost-devel qt5-qttools-devel kwin-devel kf6-kconfigwidgets-devel libepoxy-devel kf6-kcmutils-devel qt6-qtbase-private-devel wayland-devel libplasma-devel plasma5support-devel kf6-kwidgetsaddons-devel zip unzip "cmake(Plasma)" "cmake(KF5Config)" "cmake(KF5CoreAddons)" "cmake(KF5FrameworkIntegration)"  "cmake(KF5GuiAddons)" "cmake(KF5Kirigami2)" "cmake(KF5WindowSystem)" "cmake(KF5I18n)" "cmake(Qt5DBus)" "cmake(Qt5Quick)" "cmake(Qt5Widgets)" "cmake(Qt5X11Extras)" "cmake(KDecoration2)" "cmake(KF6ColorScheme)" "cmake(KF6Config)" "cmake(KF6KIO)" "cmake(KF6CoreAddons)" "cmake(KF6FrameworkIntegration)" "cmake(KF6GuiAddons)" "cmake(KF6I18n)" "cmake(KF6KCMUtils)" "cmake(KF6KirigamiPlatform)" "cmake(KF6WindowSystem)" "cmake(Qt6Core)" "cmake(Qt6DBus)" "cmake(Qt6Quick)" "cmake(Qt6QuickControls2)" "cmake(Qt6Svg)" "cmake(Qt6Widgets)" "cmake(Qt6Xml)" "cmake(Qt6Concurrent)" "cmake(Qt6Gui)" "cmake(Qt6LinguistTools)" "cmake(Qt6Network)" "cmake(Qt6Qml)" "cmake(Qt6Test)" "cmake(Qt6WebEngineWidgets)"

# Directories
mkdir -p /artifacts/kde-extras-built/usr/share/kwin/effects
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoid

#
# Plasma Panel Colorizer
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer
cd /tmp
#git clone --single-branch --depth=1 https://github.com/luisbocanegra/plasma-panel-colorizer.git
latest_version=$(curl -s https://api.github.com/repos/luisbocanegra/plasma-panel-colorizer/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')
version=${latest_version#v}
curl -Lo "/tmp/plasma-panel-colorizer.tar.gz" "https://github.com/luisbocanegra/plasma-panel-colorizer/archive/refs/tags/"$latest_version".tar.gz"
tar -xf /tmp/plasma-panel-colorizer.tar.gz --one-top-level=/tmp/plasma-panel-colorizer
cd plasma-panel-colorizer/plasma-panel-colorizer-$version
#chmod +x package-plasmoid.sh
#./package-plasmoid.sh
#unzip plasmoid-panel-colorizer-v*.plasmoid -d /artifacts/kde-extras-built/usr/share/plasma/plasmoids/luisbocanegra.panel.colorizer
cmake -B build -S . -DINSTALL_PLASMOID=ON -DBUILD_PLUGIN=ON
cmake --build build
DESTDIR="/artifacts/kde-extras-built" cmake --install build

#
# Compact Pager
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.github.tilorenz.compact_pager
cd /tmp
git clone https://github.com/tilorenz/compact_pager.git
cd compact_pager
chmod +x bundle.sh
./bundle.sh
unzip package.plasmoid -d /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.github.tilorenz.compact_pager

#
# Overview Widget
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview
cd /tmp
git clone https://github.com/HimDek/Overview-Widget-for-Plasma.git
cd Overview-Widget-for-Plasma
make overview
unzip overview.plasmoid -d /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview

#
# Window Title Applet
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
cd /tmp
git clone https://github.com/dhruv8sh/plasma6-window-title-applet.git
cd plasma6-window-title-applet
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
mv LICENSE /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle

#
# plasma-applet-netspeed-widget
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.netspeedWidget
cd /tmp
git clone https://github.com/dfaust/plasma-applet-netspeed-widget.git
cd plasma-applet-netspeed-widget
mv ./package/* /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.netspeedWidget

#
# PlasMusic Toolbar
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/plasmusic-toolbar
cd /tmp
git clone https://github.com/ccatterina/plasmusic-toolbar.git
cd plasmusic-toolbar
mv ./src/* /artifacts/kde-extras-built/usr/share/plasma/plasmoids/plasmusic-toolbar

#
# Desktop Indicator
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.plasm6desktopindicator
cd /tmp
git clone https://github.com/dhruv8sh/plasma6-desktop-indicator.git
cd plasma6-desktop-indicator
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.plasm6desktopindicator
mv LICENSE /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.plasm6desktopindicator
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.plasm6desktopindicator

#
# Ginti
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.ginti
cd /tmp
git clone https://github.com/dhruv8sh/plasma6-desktopindicator-gnome.git
cd plasma6-desktopindicator-gnome
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.ginti
mv LICENSE /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.ginti
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.plasma.ginti