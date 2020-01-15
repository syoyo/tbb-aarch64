#!/bin/bash

## Please edit android sdk/ndk/cmake path
ANDROID_SDK_ROOT?=$HOME/Android/Sdk/
ANDROID_NDK_ROOT=$HOME/Android/Sdk/ndk-bundle
#ANDROID_NDK_ROOT=$HOME/local/android-ndk-r19c

CMAKE_BIN=$ANDROID_SDK_ROOT/cmake/3.10.2.4988404/bin/cmake
# If you only have Android NDK, you can use Host PC's cmake(e.g. apt installed cmake on Ubuntu. version 3.6 or later required)
#CMAKE_BIN=cmake


curdir=`pwd`

BUILD_DIR=build-android

# install dir
DIST_DIR="$curdir/dist-android"

rm -rf $BUILD_DIR
mkdir $BUILD_DIR
cd $BUILD_DIR

# For ninja build. You can use your own ninja(e.g. `apt install ninja-build`, or binary from Android SDK
# -DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.6.4111459/bin/ninja 

$CMAKE_BIN \
  -DCMAKE_INSTALL_PREFIX=$DIST_DIR \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_NATIVE_API_LEVEL=28 \
  -DANDROID_STL=c++_shared \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DTBB_BUILD_TESTS=Off \
  ..
