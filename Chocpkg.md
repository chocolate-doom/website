'''chocpkg''' is Chocolate Doom's build system which will be used for all Chocolate Doom builds from [[sdl2-branch|version 3]] onwards.

== Design ==

chocpkg is based on shell scripts and designed to be a modular replacement for [https://github.com/chocolate-doom/buildscripts the old Chocolate Doom build script]. Chocolate Doom now depends on a number of different libraries for various functionality, and a system was needed that could build all of these dependencies.

Features include:

* Dependency tracking and recursive installation of dependencies.
* Package groups for easy installation of optional dependencies.
* Allows detection of installed system libraries and compilation of dependencies where such libraries are missing.
* Multiple ways of fetching and building packages; packages based on autotools and pkg-config are the easiest to build.
* Support for cross-compilation.

== Commands ==



== External links ==
* [https://github.com/chocolate-doom/chocpkg chocpkg] on Github.