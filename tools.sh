#!/bin/bash

#国内的临时解决方案
git config --global url."https://mirrors.tuna.tsinghua.edu.cn/git/AOSP".insteadOf https://android.googlesource.com

#arm64的gcc
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 gcc64


#arm32的gcc
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 gcc32

#arm64的clang
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 Clang
