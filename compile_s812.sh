#!/bin/bash
# copy files from userpatches.s8xx to userpatches
./compile.sh BOARD=aml-s812 BRANCH=current RELEASE=noble BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img USE_TORRENT=no KERNEL_GIT=shallow
