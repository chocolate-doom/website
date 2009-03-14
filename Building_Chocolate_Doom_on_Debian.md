[[Image:Chocolate-doom-linux.png|thumb|right|Chocolate Doom running under Ubuntu Linux, a distribution derived from Debian.]]
The following are instructions for building Chocolate Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].

== Dependencies ==

The first step is to install the necessary dependencies for building Chocolate Doom.  The easiest way to do this is to use the Debian package manager.  Run this command as root:

 apt-get install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging

Several packages will be installed.  Download the source package from the link in the sidebar to the left.  Extract the package: for example,

 tar xzf chocolate-doom-1.2.1.tar.gz

Then build the package:

 cd chocolate-doom-1.2.1
 ./configure
 make
 make install

The final "make install" command should be run as root.

== Tracking Subversion ==

To keep up to date with the latest bleeding-edge version of Chocolate Doom, you can build the latest version from the Subversion repository.

To do this, you need to install some extra packages:

 apt-get install automake1.8 autoconf libtool subversion

Check out the latest version from Subversion:

 svn co https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/trunk/chocolate-doom

Then build the package:

 cd chocolate-doom
 ./autogen.sh
 make
 make install

To keep up to date, periodically run these commands to update your checkout and rebuild:

 svn up
 make
 make install