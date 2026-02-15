#!/usr/bin/env bash
set -euox pipefail

git clone https://github.com/hhd-dev/hwfirm /tmp/hwfirm --depth 1
cp -r /tmp/hwfirm/cirrus/* /usr/lib/firmware/cirrus/
cp -r /tmp/hwfirm/rtl_bt/* /usr/lib/firmware/rtl_bt/
cp -r /tmp/hwfirm/awinic/* /usr/lib/firmware/
cp -r /tmp/hwfirm/tas/*    /usr/lib/firmware/
cp -r /tmp/hwfirm/xone/xow* /usr/lib/firmware/
rm -rf /tmp/hwfirm/

rm /usr/lib/firmware/rtl_bt/rtl8822cu_config.bin.xz
