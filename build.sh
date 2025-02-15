##!/bin/bash

export PATH="/home/young/kernel/clang/bin:/home/young/kernel/gcc64/bin:/home/young/kernel/gcc32/bin:$PATH"

args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CROSS_COMPILE=aarch64-linux-gnu- \
CC=clang \
CC_ADDITION_FLAGS="AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip LLVM_IAS=1 LLVM=1" \
CROSS_COMPILE_COMPAT=arm-linux-gnueabi- "

make ${args} vendor/kona-perf_defconfig
make ${args}

