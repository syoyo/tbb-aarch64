#!/bin/bash

## Please edit android sdk/ndk/cmake path
ANDROID_SDK_ROOT=$HOME/Android/Sdk/
ANDROID_NDK_ROOT=$HOME/local/android-ndk-r19c
CMAKE_BIN=$ANDROID_SDK_ROOT/cmake/3.10.2.4988404/bin/cmake

rm -rf build-android

# For ninja build
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja \

$CMAKE_BIN \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_NATIVE_API_LEVEL=28 \
  -DANDROID_STL=c++_shared \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/tbb-android \
  -DTBB_BUILD_TESTS=Off \
  -Bbuild-android -H.
