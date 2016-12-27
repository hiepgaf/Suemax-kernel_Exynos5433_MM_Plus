#!/bin/bash

cd /home/max/github/Suemax-kernel_Exynos5433_MM_Plus

echo "CROSS_COMPILE=/home/max/toolchains/arm-eabi-4.8/bin/arm-eabi-"
export CROSS_COMPILE=/home/max/toolchains/arm-eabi-4.8/bin/arm-eabi-

echo "clean && make mrproper"
make clean && make mrproper

echo "export ARCH=arm"
export ARCH=arm

#make Suemax_trelte_defconfig
make trelte_00_defconfig

make -j
