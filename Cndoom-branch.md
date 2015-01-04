[[File:cndoom_timer_ingame.png|thumb|right|Timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Intermission timer]]
[[File:cnlaunch.png|thumb|right|Windows launcher]]
'''Competition Doom (CNDOOM)''' is a Chocolate Doom for for [http://doom.com.hr/?page=compet-n_rules Doom speedruning competition].

Do not mix COMPET-N and CNDOOM. COMPET-N is for Vanilla (doom2.exe only), while CNDOOM is for Competition Doom (cndoom.exe) client only.

== Features ==

- quickstart enables you to move your mouse while Doom is loading (delayed) when recording demo

- removed all limits (savegame, demo) (no more crashes)

- configurable ingame and intermission (NET games too) timer with milliseconds

- removed message box after recording demos

- always preload/precache sounds

- show intermission screen for ExM8

- do not end game after ExM8 (Ultimate Doom movie is now possible)

- always run and novert turned on by default, show_endoom turned off, screenblocks 10, gamma 4, jobspeed 29, ...

- stats dumping per level and total for movies (-printstats)

- LMP metadata

- Windows launcher for easy recording or playback and WAD/PWAD selection

- additional command line parameters required for recording demos (-speed, -max, -nmare, -nm100s, -tyson, -pacifist, -movie)

- high resolution (taken from [http://www.chocolate-doom.org/wiki/index.php/Crispy_Doom crispy branch]). All credits and BIG thanks to Fabian Greffrath.

- works on Windows 98, XP, 7, 8, MacOS and Linux

- show secret is revealed as normal message ONLY when playing demo

- mouse x and y sensitivity from crispy doom

- tweak delay rate when key is pressed and character rate per second

== TODO ==

- more stats on cooperative intermission screen

- metadata for coop

- client/server demo verification

- crispy hud

- launcher: demo browsing + display descriptions + automatic game selection for av/hr/mm/mm2/re/ce

- launcher: support launching with different game engines (vanilla, choco, prboom++, legacy, crispy)

== Requirements ==

For Windows:

- DirectX 9.0c

- Microsoft .NET Framework 2.0 or higher (required only for launcher)

For Windows 9x, use -gdi command line option or change in cndoom.cfg video_driver to "windib"

All files, patches and fixes can be downloaded from here:
http://doom.com.hr/cndoom/support/

== Download ==
[http://www.doom.com.hr/cndoom/cndoom-2.0.3.1.zip Competition Doom v2.0.3.1 for Windows]

[http://www.doom.com.hr/cndoom/cndoom-2.0.3.1.tar.gz Source code]

[http://www.doom.com.hr/cndoom/cnlaunch-1.4.4.zip Competition Doom launcher v1.4.4]

== Beta ==

No beta release at the moment.


'''DO NOT USE BETA VERSION FOR DEMO RECORDING!!! IT'S UNSTABLE AND UNTESTED!'''

'''!!!DEMOS RECORDED WITH BETA VERSIONS WILL NOT BE ACCEPTED TO COMPETITION!!!'''

== Launcher beta release ==
[http://www.doom.com.hr/cndoom/cnlaunch-2.0.0.1-beta1.zip CNlauncher v2.0.0.1 BETA for Windows]

For testing purposes only!

Please [http://doom.com.hr/forum/viewtopic.php?f=74&t=476 send your suggestions and comments here] for final version.


Updated: 04.01.2015.

== Building ==
The following are instructions for building Competition Doom under [http://www.debian.org/ Debian GNU/Linux]; these instructions also apply to building under distributions derived from Debian, including [http://www.ubuntu.com/ Ubuntu].


== Dependencies ==

The first step is to install the necessary dependencies for building Competition Doom.  The easiest way to do this is to use the Debian package manager. Run this command as root:

 aptitude install gcc make libsdl1.2-dev libsdl-net1.2-dev libsdl-mixer1.2-dev python-imaging fluidsynth dh-autoreconf mingw32 zlib1g-dev

Several packages will be installed.

== Linux ==

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

== Windows binaries on Linux ==

 cd /root
 wget http://www.doom.com.hr/cndoom/build-cndoom-win
 wget http://www.doom.com.hr/cndoom/clean-cndoom-win
 chmod +x build-cndoom-win clean-cndoom-win

Then just type:

 ./build-cndoom-win


To clean and rebuild Windows executables do:

 ./clean-cndoom-win

== Windows MSVC ==

You will need SDL development libraries:

  https://www.libsdl.org/release/SDL-devel-1.2.15-VC.zip
  http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-devel-1.2.12-VC.zip
  https://www.libsdl.org/projects/SDL_net/release/SDL_net-devel-1.2.8-VC.zip

  http://www.doom.com.hr/cndoom/support/

Extract and add them to MVSC options (libraries, includes).

Then load project cndoom.sln from directory msvc and build.

== Latest GIT version ==
Get the latest version from Git:

 git clone https://github.com/fx02/cndoom.git


To keep up to date, periodically run these command to update your source:

 git pull

==External links==
*[https://github.com/fx02/cndoom.git Competition Doom Git]
*[http://doom.com.hr/compet-n/ Competition Doom homepage]


==Help and contact==

If you are interested in Competition Doom and want to help with coding or have ideas and comments, please contact us at cndoom@doom.com.hr.


==Bugs==

Report bugs/issues on github https://github.com/fx02/cndoom.git.




[[Category:Branches]]