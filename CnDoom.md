---
redirect_from:
 - /wiki/index.php/CnDoom
 - /wiki/index.php/Cndoom-branch
 - /Cndoom-branch.html
categories:
 - Forks
---
{% capture caption %}
Timer
{% endcapture %}
{% include Image.md caption=caption image="Cndoom_timer_ingame.png" %}
{% capture caption %}
Intermission timer
{% endcapture %}
{% include Image.md caption=caption image="Cndoom_timer_intermission.png" %}
{% capture caption %}
Windows launcher
{% endcapture %}
{% include Image.md caption=caption image="Cnlaunch.png" %}

**Competition Doom (CNDOOM)** is a Chocolate Doom for for [Doom speedruning competition](http://doom.com.hr/?page=compet-n_rules).

Do not mix COMPET-N and CNDOOM. COMPET-N is for Vanilla (doom2.exe only), while CNDOOM is for Competition Doom (cndoom.exe) client only.

## Features

\- removed all limits (savegame, demo) (no more crashes)

\- configurable ingame and intermission (NET games too) timer with milliseconds

\- removed message box after recording demos

\- show intermission screen for ExM8

\- do not end game after ExM8 (Ultimate Doom movie is now possible)

\- always run and novert turned on by default, show_endoom turned off, screenblocks 10, gamma 4, jobspeed 29, \...

\- LMP metadata

\- Windows launcher for easy recording or playback and WAD/PWAD selection

\- additional command line parameters required for recording demos (-speed, -max, -nmare, -nm100s, -tyson, -pacifist, -movie)

\- works on Windows 98, XP, 7, 8, MacOS and Linux

\- show secret is revealed as normal message ONLY when playing demo

\- stats dumping per level and total for movies (-printstats)

## REMOVED in v3 {#removed_in_v3}

\- quickstart

\- high resolution (taken from [crispy branch](http://www.chocolate-doom.org/wiki/index.php/Crispy_Doom)). All credits and BIG thanks to Fabian Greffrath.

\- mouse x and y sensitivity from crispy doom

\- tweak delay rate when key is pressed and character rate per second

\- always preload/precache sounds (not needed anymore)

## TODO

\- more stats on cooperative intermission screen

\- metadata for coop

\- client/server demo verification

\- launcher: enable zip browsing + display demo descriptions + automatic game selection for av/hr/mm/mm2/re/ce based on naming

## Requirements

For Windows:

\- DirectX 9.0c

\- Microsoft .NET Framework 2.0 or higher (required only for launcher)

For Windows 9x, use -gdi command line option or change in cndoom.cfg video_driver to \"windib\"

All files, patches and fixes can be downloaded from here:
<http://doom.com.hr/cndoom/support/>

## Download

[Competition Doom v2.0.3.2 for Windows](http://www.doom.com.hr/cndoom/cndoom-2.0.3.2.zip) (updated with launcher 25.6.2015)

[Source code](http://www.doom.com.hr/cndoom/cndoom-2.0.3.2.tar.gz)

[Competition Doom launcher v2.0.1.0 beta7](http://www.doom.com.hr/cndoom/cnlaunch-2.0.1.0-beta7.zip) (updated 25.6.2015)

## Beta

Lates builds for testing:

<https://github.com/fx02/cndoom/releases>

**DO NOT USE BETA VERSION FOR DEMO RECORDING!!! IT\'S UNSTABLE AND UNTESTED!**

**!!!DEMOS RECORDED WITH BETA VERSIONS WILL NOT BE ACCEPTED TO COMPETITION!!!**

## Launcher beta release {#launcher_beta_release}

Competition Doom launcher for Windows

For testing purposes only!

Please [send your suggestions and comments here](http://doom.com.hr/forum/viewtopic.php?f=74&t=476) for final version.

## Building

Building process for v3 was changed\... TODO\...

## Latest GIT version {#latest_git_version}

Get the latest version from Git:

    git clone https://github.com/fx02/cndoom.git

To keep up to date, periodically run these command to update your source:

    git pull

## External links {#external_links}

{% include Doomwiki.md page="Competition Doom" %}

- [Competition Doom Git](https://github.com/fx02/cndoom.git)
- [Competition Doom homepage](http://doom.com.hr/compet-n/)

## Help and contact {#help_and_contact}

If you are interested in Competition Doom and want to help with coding or have ideas and comments, please contact us at cndoom@doom.com.hr.

## Bugs

Report bugs/issues on github <https://github.com/fx02/cndoom.git>.
