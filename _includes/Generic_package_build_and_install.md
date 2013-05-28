<!-- This is a template holding the gneric instructions for how to build and install the Chocolate Doom package. -->
== Building ==

Download the source package from the link in the sidebar to the left.  Extract the package: for example,

 tar xzf chocolate-doom-1.7.0.tar.gz

Then build the package:

 cd chocolate-doom-1.7.0
 ./configure
 make
 make install

The final "make install" command should be run as root.