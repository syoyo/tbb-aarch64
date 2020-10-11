#!/bin/bash

CMAKE_BIN=cmake

curdir=`pwd`

BUILD_DIR=build-aarch64

# install dir
DIST_DIR="$curdir/dist"

rm -rf $BUILD_DIR
mkdir $BUILD_DIR
cd $BUILD_DIR

$CMAKE_BIN \
  -DCMAKE_INSTALL_PREFIX=$DIST_DIR \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DTBB_BUILD_TESTS=Off \
  ..
