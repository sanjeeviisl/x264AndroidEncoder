#!/usr/bin/env bash

chmod a+x build_android_*.sh

# Build arm v6 v7a
./build_android_arm.sh

# Build arm64 v8a
./build_android_arm64-v8a.sh

# Build x86
./build_android_x86.sh

# Build x86_64
./build_android_x86_64.sh
