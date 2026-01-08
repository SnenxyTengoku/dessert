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
curl -1sLf 'https://dl.cloudsmith.io/public/task/task/setup.rpm.sh' | sudo -E bash
dnf install -y "cmake(KDecoration2)" \
    "cmake(KF5Config)" \
    "cmake(KF5CoreAddons)" \
    "cmake(KF5FrameworkIntegration)" \
    "cmake(KF5GuiAddons)" \
    "cmake(KF5I18n)" \
    "cmake(KF5Kirigami2)" \
    "cmake(KF5WindowSystem)" \
    "cmake(KF6ColorScheme)" \
    "cmake(KF6Config)" \
    "cmake(KF6CoreAddons)" \
    "cmake(KF6FrameworkIntegration)" \
    "cmake(KF6GuiAddons)" \
    "cmake(KF6I18n)" \
    "cmake(KF6KCMUtils)" \
    "cmake(KF6KIO)" \
    "cmake(KF6KirigamiPlatform)" \
    "cmake(KF6WindowSystem)" \
    "cmake(Plasma)" \
    "cmake(Qt5DBus)" \
    "cmake(Qt5Quick)" \
    "cmake(Qt5Widgets)" \
    "cmake(Qt5X11Extras)" \
    "cmake(Qt6Concurrent)" \
    "cmake(Qt6Core)" \
    "cmake(Qt6DBus)" \
    "cmake(Qt6Gui)" \
    "cmake(Qt6LinguistTools)" \
    "cmake(Qt6Network)" \
    "cmake(Qt6Qml)" \
    "cmake(Qt6Quick)" \
    "cmake(Qt6QuickControls2)" \
    "cmake(Qt6Svg)" \
    "cmake(Qt6Test)" \
    "cmake(Qt6WebEngineWidgets)" \
    "cmake(Qt6Widgets)" \
    "cmake(Qt6Xml)" \
    7zip \
    clang-devel \
    cmake \
    extra-cmake-modules \
    gcc-c++ \
    gettext boost-devel \
    git \
    git-clang-format \
    glibc-gconv-extra \
    gn \
    go-task \
    kf6-kcmutils-devel \
    kf6-kconfigwidgets-devel \
    kf6-kwidgetsaddons-devel \
    kwin-devel \
    libdrm \
    libepoxy-devel \
    libplasma-devel \
    ninja-build \
    nodejs-npm \
    perl-YAML-LibYAML \
    plasma5support-devel \
    qt5-qttools-devel \
    qt6-qtbase-private-devel \
    unzip \
    wayland-devel \
    zip

# Directories
mkdir -p /artifacts/kde-extras-built/usr/share/kwin/effects
mkdir -p /artifacts/kde-extras-built/usr/share/kwin/scripts
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoid

#
# Krohnkite
#
mkdir -p /artifacts/kde-extras-built/usr/share/kwin/scripts/krohnkite
cd /tmp
git clone --single-branch --depth=1 https://codeberg.org/anametologin/Krohnkite.git
cd Krohnkite
go-task package
unzip builds/krohnkite-*.kwinscript -d /artifacts/kde-extras-built/usr/share/kwin/scripts/krohnkite

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
# KDE Control Station
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/KdeControlStation
cd /tmp
git clone --single-branch --depth=1 https://github.com/EliverLara/kde-control-station.git
cd kde-control-station
mv package/contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/KdeControlStation
mv package/translate /artifacts/kde-extras-built/usr/share/plasma/plasmoids/KdeControlStation
mv package/metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/KdeControlStation

#
# Window Title Applet
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
cd /tmp
git clone --single-branch --depth=1 https://github.com/dhruv8sh/plasma6-window-title-applet.git
cd plasma6-window-title-applet
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
mv LICENSE /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.kde.windowtitle

#
# PlasMusic Toolbar
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/plasmusic-toolbar
cd /tmp
git clone --single-branch --depth=1 https://github.com/ccatterina/plasmusic-toolbar.git
cd plasmusic-toolbar
mv ./src/* /artifacts/kde-extras-built/usr/share/plasma/plasmoids/plasmusic-toolbar

#
# Overview
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview
cd /tmp
git clone --single-branch --depth=1 https://github.com/HimDek/Overview-Widget-for-Plasma.git
cd Overview-Widget-for-Plasma
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview
mv index.html /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview
mv LICENSE.md /artifacts/kde-extras-built/usr/share/plasma/plasmoids/com.himdek.kde.plasma.overview

#
# kara
#
mkdir -p /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.dhruv8sh.kara
cd /tmp
git clone --single-branch --depth=1 https://github.com/dhruv8sh/kara.git
cd kara
mv contents /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.dhruv8sh.kara
mv LICENSE /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.dhruv8sh.kara
mv metadata.json /artifacts/kde-extras-built/usr/share/plasma/plasmoids/org.dhruv8sh.kara