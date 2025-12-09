#!/usr/bin/env bash


set -euox pipefail

# Add Terra repositories and installs the repo package
#curl -fsSL https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo | tee /etc/yum.repos.d/terra.repo
#rpm-ostree install terra-release
dnf install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release -y