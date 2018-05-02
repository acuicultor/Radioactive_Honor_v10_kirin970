#!/bin/bash

# Radioactive Kernel Details
KERNEL_NAME="~Radioactive"
INCREMENTAL_VERSION="V1.0.1"
export LOCALVERSION="${KERNEL_NAME}-${INCREMENTAL_VERSION}"
export KBUILD_BUILD_USER=acuicultor
export KBUILD_BUILD_HOST=NuclearPowerPlant
export PATH=$PATH:/home/acuicultor/Android/toolchains/ubernaro-aarch64-linux-android-4.9/bin
export CROSS_COMPILE=aarch64-linux-android-
mkdir out
make ARCH=arm64 O=out radioactive_defconfig
make ARCH=arm64 O=out -j5

