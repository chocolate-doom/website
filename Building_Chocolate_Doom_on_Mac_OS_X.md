[[Image:Chocolate Doom MacOSX.png|right|thumb|Chocolate Doom running on OSX]]
The latest development versions of Chocolate Doom now run on [[Wikipedia:MacOS X|MacOS X]] (although there has not yet been an OS X release).  To build, follow these steps. 

First, install Apple's Xcode development environment, which can be found [http://developer.apple.com/tools/xcode/ here] (you will need to register for the Apple site to download this).  This is necessary as it includes a copy of the compiler and libraries needed to build Chocolate Doom.

There is a script which will automatically build Chocolate Doom and all its' prerequisites. To run the script, open a Terminal and type:

<pre>
 curl http://www.chocolate-doom.org/build-chocolate-doom | sh
</pre>

Chocolate Doom will be built in your home folder in ~/chocolate-doom.  Copy a Doom IWAD file (doom.wad, doom1.wad, doom2.wad, tnt.wad or plutonia.wad) into this folder, then type:

 cd ~/chocolate-doom
 ./chocolate-doom