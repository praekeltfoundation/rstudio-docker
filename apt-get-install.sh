#!/usr/bin/env bash
# copied from: https://raw.githubusercontent.com/praekeltfoundation/docker-py-base/master/debian/scripts/apt-get-install.sh
set -xe

# Install packages using apt-get without leaving a mess behind. Fetches and then
# later removes package indexes and install files.
# Usage: apt-get-install.sh [package...]

# Fetch the package indexes
apt-get update

# Do the install
apt-get install -y \
  -o APT::Install-Recommends=false \
  -o APT::Install-Suggests=false \
  "$@"

# Remove the package indexes
rm -rf /var/lib/apt/lists/*
