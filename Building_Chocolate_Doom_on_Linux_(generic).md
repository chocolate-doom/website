These are generic build instructions for building Chocolate Doom on Linux.

== Setting up a build environment ==

Before Chocolate Doom can be built, a working build environment needs to be set up.  The following packages need to be installed:

# gcc, the GNU C Compiler
# wget
# git
# Development libraries for the X Window system - may be called 'libx11-dev', 'x-devel' or similar.

The way to install these differs according to your distribution.  On many systems these are standard components that are installed by default when you install the system.  If not, you should install them using the package system for your distribution.

== Build using chocpkg ==

[[Chocpkg]] is the recommended tool used to build Chocolate Doom. 

From a terminal, first clone the chocpkg repository:

 git clone https://github.com/chocolate-doom/chocpkg.git

Then to build:

 cd chocpkg
 ./chocpkg/chocpkg build chocolate-doom

or for the latest version from Git:

 ./chocpkg/chocpkg build chocolate-doom/latest

If build failures occur, it may be because of missing library dependencies. It's hard to give generic recommendations on how to resolve these as the solution depends on the Linux distribution. But if a required library is missing, check your system package manager to see if it is possible to install it; you may need to look for the "dev" or "devel" version of the package as well.

[[Category:Build instructions]]