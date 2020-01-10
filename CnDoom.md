[[File:cndoom_timer_ingame.png|thumb|right|Timer]]
[[File:cndoom_timer_intermission.png|thumb|right|Intermission timer]]
[[File:cnlaunch.png|thumb|right|Windows launcher]]
'''Competition Doom (CNDOOM)''' is a Chocolate Doom for for [http://doom.com.hr/?page=compet-n_rules Doom speedruning competition].

Do not mix COMPET-N and CNDOOM. COMPET-N is for Vanilla (doom2.exe only), while CNDOOM is for Competition Doom (cndoom.exe) client only.

== Features ==

- removed all limits (savegame, demo) (no more crashes)

- configurable ingame and intermission (NET games too) timer with milliseconds

- removed message box after recording demos

- show intermission screen for ExM8

- do not end game after ExM8 (Ultimate Doom movie is now possible)

- always run and novert turned on by default, show_endoom turned off, screenblocks 10, gamma 4, jobspeed 29, ...

- LMP metadata

- Windows launcher for easy recording or playback and WAD/PWAD selection

- additional command line parameters required for recording demos (-speed, -max, -nmare, -nm100s, -tyson, -pacifist, -movie)

- works on Windows 98, XP, 7, 8, MacOS and Linux

- show secret is revealed as normal message ONLY when playing demo

- stats dumping per level and total for movies (-printstats)


== REMOVED in v3 ==

- quickstart

- high resolution (taken from [http://www.chocolate-doom.org/wiki/index.php/Crispy_Doom crispy branch]). All credits and BIG thanks to Fabian Greffrath.

- mouse x and y sensitivity from crispy doom

- tweak delay rate when key is pressed and character rate per second

- always preload/precache sounds (not needed anymore)

== TODO ==


- more stats on cooperative intermission screen

- metadata for coop

- client/server demo verification

- launcher: enable zip browsing + display demo descriptions + automatic game selection for av/hr/mm/mm2/re/ce based on naming

== Requirements ==

For Windows:

- DirectX 9.0c

- Microsoft .NET Framework 2.0 or higher (required only for launcher)

For Windows 9x, use -gdi command line option or change in cndoom.cfg video_driver to "windib"

All files, patches and fixes can be downloaded from here:
http://doom.com.hr/cndoom/support/

== Download ==
[http://www.doom.com.hr/cndoom/cndoom-2.0.3.2.zip Competition Doom v2.0.3.2 for Windows]  (updated with launcher 25.6.2015)

[http://www.doom.com.hr/cndoom/cndoom-2.0.3.2.tar.gz Source code]

[http://www.doom.com.hr/cndoom/cnlaunch-2.0.1.0-beta7.zip Competition Doom launcher v2.0.1.0 beta7] (updated 25.6.2015)

== Beta ==

Windows build only for testing (updated ):

Grab latest build from here:

https://github.com/fx02/cndoom/releases


Source:



'''DO NOT USE BETA VERSION FOR DEMO RECORDING!!! IT'S UNSTABLE AND UNTESTED!'''

'''!!!DEMOS RECORDED WITH BETA VERSIONS WILL NOT BE ACCEPTED TO COMPETITION!!!'''

== Launcher beta release ==
Competition Doom launcher for Windows

For testing purposes only!

Please [http://doom.com.hr/forum/viewtopic.php?f=74&t=476 send your suggestions and comments here] for final version.


Updated:

== Building ==

Building process for v3 was changed... TODO...


== Latest GIT version ==
Get the latest version from Git:

 git clone https://github.com/fx02/cndoom.git


To keep up to date, periodically run these command to update your source:

 git pull

==External links==
{{Doomwiki|Competition Doom}}
*[https://github.com/fx02/cndoom.git Competition Doom Git]
*[http://doom.com.hr/compet-n/ Competition Doom homepage]

==Help and contact==

If you are interested in Competition Doom and want to help with coding or have ideas and comments, please contact us at cndoom@doom.com.hr.


==Bugs==

Report bugs/issues on github https://github.com/fx02/cndoom.git.




[[Category:Forks]]