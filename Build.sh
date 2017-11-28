#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6735

export KBUILD_BUILD_USER="Mysteryagr"
export KBUILD_BUILD_HOST="TravisCI"

#Defconfig for Moto C
make -C $PWD O=$PWD/out ARCH=arm wt6737m_35_n_defconfig
#make ARCH=arm wt6737m_35_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm
#make -j4 ARCH=arm
