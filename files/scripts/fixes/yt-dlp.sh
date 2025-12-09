#!/usr/bin/env bash
set -oue pipefail

# in case for some reason yt-dlp won't download: use this script instead
# just grabs the binary directly from github and installs it
curl -sL -o /usr/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux
chmod +x /usr/bin/yt-dlp