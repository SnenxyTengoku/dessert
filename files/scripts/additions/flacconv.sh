#!/usr/bin/env bash
set -euox pipefail

#
# flacconv
#
curl -sL -o /usr/bin/flacconv "https://git.unix.dog/yosh/flacconv/raw/branch/main/flacconv"
chmod +x /usr/bin/flacconv
