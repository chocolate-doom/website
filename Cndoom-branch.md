[[File:cndoom_timer_ingame.png|thumb|right|Timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Intermission timer]]
[[File:cnlaunch.png|thumb|right|Windows launcher]]
'''cndoom-branch''' is a Chocolate Doom v2 modification for [http://doom.com.hr/?page=compet-n_rules Doom speedruning competition].

Do not mix COMPET-N and CNDOOM. COMPET-N is for Vanilla (doom2.exe only), while CNDOOM is for Competition Doom (cndoom.exe) client only.

== Features ==

- quickstart enables you to move your mouse while Doom is loading (delayed) when recording demo

- removed all Vanilla Doom limits (savegame, demo) (no more crashes)

- configurable ingame and intermission (NET games too) timer with milliseconds

- removed message box after recording demos

- always preload/precache sounds

- show intermission screen for ExM8

- do not end game after ExM8 (Ultimate Doom movie is possible now)

- always run and novert turned on by default, show_endoom turned off, screenblocks 10, gamma 4, jobspeed 29, ...

- stats dumping per level and total for movies (-printstats)

- LMP metadata

- works on Windows 98, XP, 7, 8, MacOS and Linux

- Windows launcher for easy recording or playback and WAD/PWAD selection

- additional command line parameters required for recording demos (-speed, -max, -nmare, -nm100s, -tyson, -pacifist, -movie)

- high resolution (taken from crispy branch)


ToDo for v2.0.3.x:

- more stats on cooperative intermission screen


Maybe one day:

- client/server demo verification


== Requirements ==

For Windows:

- DirectX 9.0c

- Microsoft .NET Framework 2.0 or higher (required only for launcher)

For Windows 9x, use -gdi command line option or change in cndoom.cfg video_driver to "windib"

All files, patches and fixes can be downloaded from here:
http://doom.com.hr/cndoom/support/


== Download ==
[http://www.doom.com.hr/cndoom/cndoom-2.0.2.1-win.zip Competition Doom v2.0.2.1 for Windows]

[http://www.doom.com.hr/cndoom/cndoom-2.0.2.1.tar.gz Source code]

[http://www.doom.com.hr/cndoom/cnlaunch-1.4.3.zip Competition Doom launcher v1.4.3]

== Beta ==
[http://www.doom.com.hr/cndoom/cndoom-2.0.3.1-beta.zip Competition Doom v2.0.3.1 for Windows]

[http://www.doom.com.hr/cndoom/cndoom-2.0.3.1.tar.gz Source for Linux]


'''DO NOT USE BETA VERSION FOR DEMO RECORDING!!! IT'S UNSTABLE AND UNTESTED!'''

'''!!!DEMOS RECORDED WITH 2.0.3.1 WILL NOT BE ACCEPTED TO COMPETITION!!!'''

== Building ==
The following are instructions for building Competition Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].


== Dependencies ==

The first step is to install the necessary dependencies for building Competition Doom.  The easiest way to do this is to use the Debian package manager. Run this command as root:

 aptitude install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging fluidsynth dh-autoreconf mingw32

Several packages will be installed. 

Download the source package and extract it, for example:

 wget http://www.doom.com.hr/cndoom/cndoom-2.0.3.1.tar.gz

 tar xzf cndoom-2.0.3.1.tar.gz

Then build the package:

 cd cndoom-2.0.3.1
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


Remember that you have to perform '''make clean''', then '''./autogen.sh''' if you already compiled for linux!

To clean and rebuild Windows executables do:

 ./clean-cndoom

Get the latest version from Git:

 git clone git@github.com:fx02/chocolate-doom.git


To keep up to date, periodically run these command to update your source:

 git pull

==External links==
*[https://github.com/fx02/chocolate-doom Competition Doom Git]
*[http://doom.com.hr/compet-n/ Competition Doom homepage]


==Help and contact==

If you are interested in Competition Doom and want to help with coding or have ideas and comments, please contact us at cndoom@doom.com.hr.


==Bugs==

Report bugs/issues on github https://github.com/fx02/chocolate-doom.




[[Category:Branches]]