#!/usr/bin/env bash


set -euox pipefail

#
# flac2opus
#
curl -sL -o /usr/bin/flac2opus "https://raw.githubusercontent.com/SimonTeixidor/flac2opus/master/flac2opus.sh"
chmod +x /usr/bin/flac2opus