#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

export KBUILD_BUILD_USER="A.G.R"
export KBUILD_BUILD_HOST="Mysteryagr"

mkdir -p out

export USE_CCACHE=1

export ARCH=arm64 ARCH_MTK_PLATFORM=mt6735

#Defconfig for Moto C
make -C $PWD O=$PWD/out ARCH=arm64 wt6737m_65_n_defconfig
#make ARCH=arm64 wt6737m65_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm64
#make -j4 ARCH=arm64
