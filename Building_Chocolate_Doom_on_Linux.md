[[Image:Chocolate-doom.png|right|thumb|Chocolate Doom on Linux]]

Building Chocolate Doom on Linux is fairly straightforward.  

== Setting up a build environment ==

Before Chocolate Doom can be built, a working build environment needs to be set up.  The following packages need to be installed:

# gcc, the GNU C Compiler
# wget
# Development libraries for the X Window system - may be called 'libx11-dev', 'x-devel' or similar.

The way to install these differs according to your distribution.  On many systems these are standard components that are installed by default when you install the system.  If not, you should install them using the package system for your distribution.

=== Ubuntu/Debian ===

Type the following command:

 sudo apt-get build-dep libsdl1.2

=== Gentoo ===

As everything Gentoo is compiled, a complete build environment is already present.  You can skip this step.

=== Fedora Core ===

=== SuSE ===

== Building Chocolate Doom ==

From this point, there is a simple script that will build Chocolate Doom and its' dependencies automatically.  Simply type:

<pre>
 wget http://www.chocolate-doom.org/build-chocolate-doom -O - | sh
</pre>

Chocolate Doom will be built in your home directory in ~/chocolate-doom.  Copy a Doom IWAD file here (doom.wad, doom1.wad, doom2.wad, tnt.wad or plutonia.wad), then type:

 cd ~/chocolate-doom
 ./chocolate-doom

== BSD and other Unix systems ==

The above instructions should also work on FreeBSD, OpenBSD, NetBSD and other Unix systems.  If you succeed in getting Chocolate Doom running on a new system, please add a screenshot to the [[Screenshots]] page.  If you have trouble, feel free to join [irc://irc.oftc.net/chocolate-doom #chocolate-doom] on IRC to ask for help.