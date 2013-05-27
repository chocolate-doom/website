[[File:cndoom_timer_ingame.png|thumb|right|Demonstration of ingame timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Demonstration of intermission timer]]
'''cndoom-branch''' is a Chocolate Doom v2.x modification for [[doom:Compet-n|Compet-n]].

== Features ==

- quickstart (original Doom behavior)

- removed all Vanilla Doom limits (no more crashes)

- ingame and intermission (NET games too) timer with miliseconds

- removed message box after recording demos

- always preload/precache sounds

- show intermission screen for ExM8


ToDo:

- client/server demo verification

- LMP metadata (partially done)

- high resolution

- stats dumping per level and total for movies

- more stats on cooperative intermission screen

- launcher (like PrBoom++)

- Android app

== Files ==

[http://www.doom.com.hr/cndoom/cndoom-0.2.4-beta.zip Download Competition Doom v0.2.4 for Windows (beta)]


The following are instructions for building Competition Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].

== Dependencies ==

The first step is to install the necessary dependencies for building Competition Doom.  The easiest way to do this is to use the Debian package manager.  Run this command as root:

 aptitude install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging

Several packages will be installed. 

{{Generic package build and install}}

== Tracking Subversion ==

To keep up to date with the latest bleeding-edge version of Chocolate Doom, you can build the latest version from the Subversion repository.

To do this, you need to install some extra packages:

 aptitude install automake autoconf libtool subversion

Check out the latest version from Subversion:

 svn co https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/branches/cndoom

Then build the package:

 cd cndoom
 ./autogen.sh
 make
 make install

To keep up to date, periodically run these commands to update your checkout and rebuild:

 svn up
 make
 make install


==External links==
*[https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/branches/cndoom Competition Doom SVN]
*[http://doom.com.hr/compet-n/ Competition Doom homepage]

[[Category:Branches]]