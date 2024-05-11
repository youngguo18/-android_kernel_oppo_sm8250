clear

export PATH="/home/lmaosid/kernel/clang/bin:${PATH}"

make O=out ARCH=arm64 CC=clang vendor/kona-perf_defconfig

mv out/.config arch/arm64/configs/vendor/kona-per_defconfig
