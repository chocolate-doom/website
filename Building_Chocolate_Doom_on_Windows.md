[[Image:Chocolate_Windows_7.png|right|thumb|Chocolate Doom on Windows]]
Chocolate Doom is built on Windows using the ''Cygwin'' build environment.  Windows developers may find this unusual as Microsoft Visual Studio is often considered the "standard" compiler for that platform. Cygwin provides a Unix-like development environment that is the same as other platforms, so the build system and compiler (autotools, make, gcc) are identical for every operating system that Chocolate Doom runs on. Using Cygwin also means that Chocolate Doom is not dependent on a proprietary tool.

Note that Cygwin is only used as a build environment: Chocolate Doom is actually built using the ''MinGW'' version of gcc, and is not linked against the Cygwin libraries (cygwin1.dll).

Building using Cygwin is not difficult. However, Cygwin is a Unix-like environment, so if you are not familiar with using a Unix command line, or find these instructions confusing, it may be a good idea to do some basic reading about how to use one.  If you have used DOS or the Windows command line in the past you will find that things are fairly similar.

Developers who are unhappy with this arrangement can use the [[Building Chocolate Doom on Windows (alternative build)|alternative build]] project files to compile using either Microsoft Visual Studio or Code::Blocks.  However, be aware that these project files may be out of date, and the "canonical" way of building Chocolate Doom is using Cygwin.

== Installing Cygwin ==

The first step is to install [http://cygwin.com/ Cygwin]. Cygwin has a graphical setup wizard that makes setting it up easy - simply download and run ''setup.exe'' from the website.

If you already have Cygwin installed, re-run the setup program again, and follow through the instructions in this section to make sure you have all the packages below installed.

Go through the setup program until the point where you are prompted to select which packages you want to install. Click the "view" button at the top right of the window and select "full" to get a single list of packages sorted by name, and select the following packages:

* automake1.8
* autoconf2.5
* bash
* gcc-mingw-core
* gcc-mingw-g++
* make
* python
* subversion
* wget
* w32api

Having selected the necessary packages, click "next" to begin the install process.  If you are installing Cygwin for the first time it may take a while to download and install all of the packages.

== Auto-build script ==

Next, download the [http://www.chocolate-doom.org/build-chocolate-doom auto-build script]. You can use ''wget'' to do this from the Cygwin Bash shell:

 wget http://www.chocolate-doom.org/build-chocolate-doom

Next you need to run the script. You have the option of either building the latest stable release, or the latest bleeding-edge version from the Subversion repository.

For the stable version, type:
 sh build-chocolate-doom

For the latest version from Subversion, type:
 sh build-chocolate-doom -svn

For the latest version of the experimental V2 branch from Subversion, type:
 sh build-chocolate-doom -v2

The auto-build script will download, build and install the SDL libraries automatically (this may take some time).  These are installed in the ''chocolate-doom'' directory in your Cygwin home directory.  If your Windows login name contains a space (eg. if it is your full name), you will likely experience problems because Unix scripts often fail when dealing with directories containing spaces.  Before running the auto-build script, type this to build in a different directory:

 mkdir /home/user
 export HOME=/home/user

=== Result ===

If the build is successful you should see the words "Build complete" and you will be returned to the command line.  Type the following commands and you should see similar output:

 user@host ~
 $ '''cd ~/chocolate-doom'''
 
 user@host ~/chocolate-doom
 $ '''ls'''
 build  chocolate-doom  chocolate-server  chocolate-setup  install  packages
 
 user@host ~/chocolate-doom
 $

== Modifying the source code ==

If you want to make your own mods to the Chocolate Doom source, go to ''~/chocolate-doom/build/chocolate-doom-(version)'' (stable release build) or ''~/chocolate-doom/build/chocolate-doom-svn'' (latest Subversion version).  The source code is in the ''src'' directory; type ''make'' to build the code after making any mods.

== Keeping up to date ==

If you have compiled the latest version from Subversion, you may want to keep up to date with new developments and bug fixes.  To update to the latest version, go to ''~/chocolate-doom/build/chocolate-doom-svn'' and type:

 svn up
 make

== See also ==
* [[Building Chocolate Doom on Windows (alternative build)]]
* [[Cross-compiling Chocolate Doom for Windows]]

[[Category:Build instructions]]