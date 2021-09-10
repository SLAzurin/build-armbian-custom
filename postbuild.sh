#!/bin/bash
# 
#   This script labels the ext4 partition in a .img file to become ROOTFS
#   ex: sudo ./postbuild.sh ./output/images/Armbian_*Aml-s812_focal_current_*.img

# Check if script run as sudo/root
if [[ $(id -u) -ne 0 ]]
  then echo "Please run as root"
  exit 1
fi

# Check if arg0 is file
if [[ ! -f $1 ]]
then
    echo "arg0 not file"
    exit 1
fi

# Get free loop partition
FREE_LOOP=$(losetup -f)
losetup $FREE_LOOP $1
if [[ ! $? -eq "0" ]]
then
    echo "failed to setup free loop"
    exit 1
fi

# Label ext4 partition
e2label "${FREE_LOOP}p2" ROOTFS
losetup -d $FREE_LOOP

chown "${USER}:${USER}" $1*
sha256sum $1 > "${1}.sha"