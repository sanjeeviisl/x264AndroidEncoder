#!/bin/bash
NDK=/home/ubuntu/android-ndk-r13b
PLATFORM=$NDK/platforms/android-21/arch-x86_64/
TOOLCHAIN=$NDK/toolchains/x86_64-4.9/prebuilt/linux-x86_64
PREFIX=./android/x86_64

function build_one
{
  ./configure \
  --prefix=$PREFIX \
  --enable-static \
  --enable-pic \
  --host=x86_64-linux \
  --cross-prefix=$TOOLCHAIN/bin/x86_64-linux-android- \
  --sysroot=$PLATFORM

  make clean
  make
  make install
}

build_one

echo Android x86_64 builds finished
