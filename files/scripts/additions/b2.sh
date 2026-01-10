#!/usr/bin/env bash


set -euox pipefail

#
# b2-cli
#
curl -sL -o /usr/bin/b2 "https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux"
chmod +x /usr/bin/b2