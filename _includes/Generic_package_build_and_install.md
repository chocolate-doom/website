<noinclude>
This is a template holding the gneric instructions for how to build and install the Chocolate Doom package.
</noinclude>

== Building ==

Download the source package from the link in the sidebar to the left.  Extract the package: for example,

 tar xzf chocolate-doom-1.2.1.tar.gz

Then build the package:

 cd chocolate-doom-1.2.1
 ./configure
 make
 make install

The final "make install" command should be run as root.