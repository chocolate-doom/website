<!-- This is a template holding the gneric instructions for how to build and install the Chocolate Doom package. -->
== Building ==

Download the source package and extract it, for example:

 tar xzf chocolate-doom-1.7.tar.gz

Then build the package:

 cd chocolate-doom
 ./configure
 make
 make install

The final "make install" command should be run as root.

You can also just use build script (c) fraggle which will download latest available version:

 wget http://www.doom.com.hr/cndoom/build-cndoom

Then just type:

 ./build-cndoom

If building stops, then do this:

 cd cndoom/build/cndoom-X.X.X
 ./autogen.sh
 ./build-cndoom

To build Windows executable on Linux type:

 ./build-cndoom -host=i586-mingw32msvc