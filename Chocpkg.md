---
redirect_from:
 - /wiki/index.php/Chocpkg
---
**chocpkg** is Chocolate Doom\'s build system which will be used for all Chocolate Doom builds from [version 3](/Sdl2-branch.md) onwards.

## Design

chocpkg is based on shell scripts and designed to be a modular replacement for [the old Chocolate Doom build script](https://github.com/chocolate-doom/buildscripts). Chocolate Doom now depends on a number of different libraries for various functionality, and a system was needed that could build all of these dependencies.

Features include:

- Dependency tracking and recursive installation of dependencies.
- Package groups for easy installation of optional dependencies.
- Allows detection of installed system libraries and compilation of dependencies where such libraries are missing.
- Multiple ways of fetching and building packages; packages based on autotools and pkg-config are the easiest to build.
- Support for cross-compilation.

## Quick example {#quick_example}

    cd chocpkg
    ./chocpkg install chocolate-doom

## Commands

packages
: List the names of all known packages.

<!-- -->

info \[package\]
: Display a description of the specified package, or all packages.

<!-- -->

install \<package\>
: Build and install the specified package, if not already installed.

<!-- -->

reinstall \<package\>
: Rebuild and reinstall the specified package, even if installed.

<!-- -->

build \<package\>
: Fetch and build the specified package, but do not install it.

<!-- -->

fetch \<package\>
: Download the specified package but do not build it.

## External links {#external_links}

- [chocpkg](https://github.com/chocolate-doom/chocpkg) on Github.
