[[File:cndoom_timer_ingame.png|thumb|right|Demonstration of ingame timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Demonstration of intermission timer]]
[[File:cnlaunch.png|thumb|right|Windows launcher]]
'''cndoom-branch''' is a Chocolate Doom modification for [[doom:Compet-n|Compet-n]].

== Features ==

- quickstart enables you to move your mouse while Doom is loading (delayed) when recording demo

- removed all Vanilla Doom limits (savegame, demo) (no more crashes)

- configurable ingame and intermission (NET games too) timer with miliseconds

- removed message box after recording demos

- always preload/precache sounds

- show intermission screen for ExM8

- do not end game after ExM8

- always run and novert turned on by default, show_endoom turned off, screenblocks 10, gamma 4, jobspeed 29, ...

- stats dumping per level and total for movies (-printstats)

- LMP metadata

- works on Windows 98, XP, 7, 8, MacOS and Linux

- Windows launcher for easy recording or playback and WAD/PWAD selection

- additional command line parameters required for recording demos (-speed, -max, -nmare, -nm100s, -tyson, -pacifist, -movie)


ToDo for v2.0.3:

- more stats on cooperative intermission screen
- metadata is still missing: record time per map/total, kills, secrets, current date and time,...


Maybe one day:

- client/server demo verification
- high resolution
- Android and iPhone app


== Requirements ==

For Windows:

- DirectX 9.0c

- Microsoft .NET Framework 2.0 or higher (required only for launcher)

For Windows 9x, use -gdi command line option or change in cndoom.cfg video_driver to "windib"

All files, patches and fixes can be downloaded from here:
http://doom.com.hr/cndoom/support/


== Download ==
[http://www.doom.com.hr/cndoom/cndoom-2.0.2.zip Competition Doom v2.0.2 for Windows] (test)

[http://www.doom.com.hr/cndoom/cndoom-2.0.1.tar.gz Latest source]

[http://www.doom.com.hr/cndoom/cnlaunch-1.4.3.zip Competition Doom launcher v1.4.3]

== Building ==
The following are instructions for building Competition Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].


== Dependencies ==

The first step is to install the necessary dependencies for building Competition Doom.  The easiest way to do this is to use the Debian package manager. Run this command as root:

 aptitude install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging fluidsynth

Several packages will be installed. 

Download the source package and extract it, for example:

 tar xzf cndoom-2.0.1.tar.gz

Then build the package:

 cd cndoom-2.0.1
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


==Bugs==

Report bugs to our tracking system http://www.doom.com.hr/cndoom/bug/ or send to cndoom@doom.com.hr.




[[Category:Branches]]