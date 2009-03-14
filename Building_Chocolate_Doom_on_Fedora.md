The following are instructions for building Chocolate Doom under [http://www.fedoraproject.org/ Fedora Linux]; they may also work on distributions derived from Fedora, but this has not been tested.

== Dependencies ==

The first step is to install the necessary dependencies for building Chocolate Doom.  The easiest way to do this is to use the ''yum'' package manager.  Run this command as root:

 yum install SDL-devel SDL_mixer-devel SDL_net-devel gcc make python-imaging

Several packages will be installed. 

== Building ==

Download the source package from the link in the sidebar to the left.  Extract the package: for example,

 tar xzf chocolate-doom-1.2.1.tar.gz

Then build the package:

 cd chocolate-doom-1.2.1
 ./configure
 make
 make install

The final "make install" command should be run as root.