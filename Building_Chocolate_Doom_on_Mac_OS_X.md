[[Image:Chocolate Doom MacOSX.png|right|thumb|Chocolate Doom running on OSX]]
Chocolate Doom's [[Downloads|current releases]] include a [[Wikipedia:OS X|Mac OS X]] binary, but you can also create your own build.

== Xcode setup ==

First, install Apple's [[Wikipedia:Xcode|Xcode]] development environment, which can be found [http://developer.apple.com/tools/xcode/ here] (you will need to register for the Apple site to download this).  This is necessary as it includes a copy of the compiler and libraries needed to build Chocolate Doom.

Launch the *Terminal* application and type the following

 xcode-select --install

== Building ==

Since the V3 release, [[chocpkg]] is the official way of building Chocolate Doom on all platforms.

Open the *Terminal* application and clone the chocpkg repository:

 git clone https://github.com/chocolate-doom/chocpkg.git

Then to build:

 cd chocpkg
 ./chocpkg/chocpkg build chocolate-doom

or for the latest version from Git:

 ./chocpkg/chocpkg build chocolate-doom/latest

[[Category:Build instructions]]