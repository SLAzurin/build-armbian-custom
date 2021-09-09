#!/bin/bash
# NOT YET AN AUTOMATIC SCRIPT
# Install kpartx if not already done
# sudo kpartx -av ./output/images/Armbian_21.11.0-trunk_Aml-s812_focal_current_5.11.0.img
# Note down loop#, replace that with the loop# below
# Change LABEL to ROOTFS
# sudo kpartx -ds /dev/loop28
# sudo losetup -d /dev/loop28
# sha256sum $IMAGE > $IMAGE.sha