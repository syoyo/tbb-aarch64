## AARCH64 port of cmake ported tbb

### Supported platform

* [x] Android aarch64(arm64-v8a)
  * Tested on NDK r20 or later
* [x] AARCH64 linux

### Build with Android

Edit path and setting in `scripts/bootstrap-android-cmake.sh`, then

```
$ ./scripts/bootstrap-android-cmake.sh
$ build-android
$ make && make install
```

In default, built files will be installed to `<this_repo>/dist-android` directory.

### Build on AARCH64 linux

Edit path and setting in `scripts/bootstrap-aarch64-linux.sh`, then

```
$ ./scripts/bootstrap-aarch64-linux.sh
$ build-aarch64
$ make && make install
```

At the moment, there is no ARM specific cmake flags for Linux target, so you can directly use `cmake`.

### Build directory

`build` directory already exists and contains a file needed to build TBB(e.g. `version_string.ver`) , thus you need to specify build directory other than `build`.

### Intel(R) Threading Building Blocks

[![Stable release](https://img.shields.io/badge/version-2020.2-green.svg)](https://github.com/01org/tbb/releases/tag/v2020.2)
[![Apache License Version 2.0](https://img.shields.io/badge/license-Apache_2.0-green.svg)](LICENSE)
[![Build Status](https://travis-ci.org/wjakob/tbb.svg?branch=master)](https://travis-ci.org/wjakob/tbb)
[![Build status](https://ci.appveyor.com/api/projects/status/fvepmk5nxekq27r8?svg=true)](https://ci.appveyor.com/project/wjakob/tbb/branch/master)

This is git repository is currently based on TBB 2020.2 and will be
updated from time to time to track the most recent release. The only
modification is the addition of a CMake-based build system.

This is convenient for other projects that use CMake and TBB because TBB can be
easily incorporated into their build process using git submodules and a simple
``add_subdirectory`` command.

Currently, the CMake-based build can create shared and static versions of
`libtbb`, `libtbbmalloc` and `libtbbmalloc_proxy` for the Intel `i386` and
`x86_64` architectures on Windows (Visual Studio, MinGW), MacOS (Clang) and
Linux (GCC & Clang). The `armv7` and `armv8` architectures are supported on
Linux (GCC & Clang). Other combinations may work but have not been tested.

See index.html for general directions and documentation regarding TBB.

See examples/index.html for runnable examples and directions.

See http://threadingbuildingblocks.org for full documentation
and software information.

Note: Intel, Thread Building Blocks, and TBB are either registered trademarks or
trademarks of Intel Corporation in the United States and/or other countries.

The CMake build contains the following additional/changed files that are not
part of the regular release: ``build/mingw_cross_toolchain.cmake``,
``build/version_string.ver.in``, ``.gitignore`` (modified), ``README.md`` (this
file), and ``Makefile.old`` (renamed from ``Makefile``).
