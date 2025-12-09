#!/usr/bin/env bash


set -euo pipefail

TERRA_REPO_FILE="$(awk -F'=' '$1 == "name" && $2 == "Terra $releasever" {print FILENAME}' /etc/yum.repos.d/*)"

# Check if rpmfusion is already installed before running
if [[ ! -f "${TERRA_REPO_FILE}" ]] || ! rpm -q terra-release &>/dev/null; then
  echo "Running Terra repo install..."
  if [[ ! -f "${TERRA_REPO_FILE}" ]] && ! rpm -q terra-release &>/dev/null; then
    curl -fsSL "https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo" \
      | tee /etc/yum.repos.d/terra.repo
    rpm-ostree install \
      terra-release
  # both of these should exist at once, if not install what is missing
  elif [[ ! -f "${TERRA_REPO_FILE}" ]]; then
    curl -fsSL "https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo" \
      | tee /etc/yum.repos.d/terra.repo
  elif ! rpm -q terra-release &>/dev/null; then
    rpm-ostree install \
      terra-release
  fi
else
  echo "Terra repo is already installed"
fi
