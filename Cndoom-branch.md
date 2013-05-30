[[File:cndoom_timer_ingame.png|thumb|right|Demonstration of ingame timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Demonstration of intermission timer]]
'''cndoom-branch''' is a Chocolate Doom v2 modification for [[doom:Compet-n|Compet-n]].

== Features ==

- quickstart (original Doom behavior) - bugged in Choco v2

- removed all Vanilla Doom limits (savegame, demo) (no more crashes)

- configurable ingame and intermission (NET games too) timer with miliseconds

- removed message box after recording demos

- always preload/precache sounds

- show intermission screen for ExM8

- always run and novert turned on by default, show_endoom turned off


ToDo:

- client/server demo verification

- LMP metadata (partially done)

- high resolution

- stats dumping per level and total for movies

- more stats on cooperative intermission screen

- launcher (like PrBoom++)

- Android app


== Download ==
[http://www.doom.com.hr/cndoom/cndoom-0.2.4-beta.zip Competition Doom v0.2.4 for Windows (beta) based on Choco v2]

[http://www.doom.com.hr/cndoom/cndoom-0.2.4.zip Competition Doom v0.2.4 for Windows (beta) based on Choco v1]

[http://www.doom.com.hr/cndoom/cndoom-0.2.4.tar.gz Latest source]


== Building ==
The following are instructions for building Competition Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].


== Dependencies ==

The first step is to install the necessary dependencies for building Competition Doom.  The easiest way to do this is to use the Debian package manager. Run this command as root:

 aptitude install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging fluidsynth

Several packages will be installed. 

Download the source package and extract it, for example:

 tar xzf cndoom-0.2.4.tar.gz

Then build the package:

 cd cndoom-0.2.4
 ./autogen.sh
 ./configure
 make
 make install

The final "make install" command should be run as root.


You can also just use build and clean scripts (c) fraggle which will download and build latest available version:

 cd /root
 wget http://www.doom.com.hr/cndoom/build-cndoom
 wget http://www.doom.com.hr/cndoom/clean-cndoom

Then just type:

 ./build-cndoom

To build Windows executable on Linux type:

 ./build-cndoom -host=i586-mingw32msvc

To clean and rebuild Windows executables do:

 ./clean-cndoom

== Tracking Subversion ==

To keep up to date with the latest bleeding-edge version of Competition Doom, you can build the latest version from the Subversion repository.

To do this, you need to install some extra packages:

 aptitude install automake autoconf libtool subversion

Check out the latest version from Subversion:

 svn co http://svn.code.sf.net/p/chocolate-doom/code/branches/cndoom

To checkout to some other directory and not cndoom-x.x.x:

 svn co http://svn.code.sf.net/p/chocolate-doom/code/branches/cndoom your_directory

To keep up to date, periodically run these command to update your checkout:

 svn up


==External links==
*[http://svn.code.sf.net/p/chocolate-doom/code/branches/cndoom/ Competition Doom SVN]
*[http://doom.com.hr/compet-n/ Competition Doom homepage]


==Help and contact==

If you are interested in Competition Doom and want to help with coding or have ideas and comments, please contact us at cndoom@doom.com.hr.


[[Category:Branches]]