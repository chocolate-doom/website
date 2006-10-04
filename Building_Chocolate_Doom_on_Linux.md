[[Image:Chocolate-doom.png|right|thumb|Chocolate Doom on Linux]]

Building Chocolate Doom on Linux is fairly straightforward.  The following need to be installed before it can be compiled:

# gcc, the GNU C Compiler
# wget
# Development libraries for the X Window system - may be called 'libx11-dev', 'x-devel' or similar.

The way to install these differs according to your distribution.  On many systems these are standard components that are installed by default when you install the system.  If not, you should install them using the package system for your distribution.

From this point, there is a simple script that will build Chocolate Doom and its' dependencies automatically.  Simply type:

 wget http://www.chocolate-doom.org/build-chocolate-doom -O - | sh

Chocolate Doom will be built in your home directory in ~/chocolate-doom.  Copy a Doom IWAD file here (doom.wad, doom1.wad, doom2.wad, tnt.wad or plutonia.wad), then type:

 cd ~/chocolate-doom
 ./chocolate-doom