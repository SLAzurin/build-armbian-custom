#!/bin/bash
# copy files from userpatches.s8xx to userpatches
./compile.sh docker BOARD=aml-s812 BRANCH=current RELEASE=focal BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img USE_TORRENT=no CLEAN_LEVEL=""