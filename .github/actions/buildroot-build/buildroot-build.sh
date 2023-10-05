#!/bin/bash

BUILDROOT_VERSION="$1"
BUILDROOT_DEFCONFIG="$2"

# Download Buildroot
BUILDROOT_URL="https://buildroot.org/downloads/buildroot-${BUILDROOT_VERSION}.tar.gz"
echo "$BUILDROOT_URL"
curl -o /tmp/buildroot.tar.gz "${BUILDROOT_URL}"
tar xf /tmp/buildroot.tar.gz -C /tmp/
mv /tmp/buildroot-${BUILDROOT_VERSION} /tmp/buildroot

# Build
cd /tmp/buildroot
make BR2_EXTERNAL="${GITHUB_WORKSPACE}" "${BUILDROOT_DEFCONFIG}"
make

# Move output to GH-Workspace
mv /tmp/buildroot/output "${GITHUB_WORKSPACE}"
