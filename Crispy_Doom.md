Crispy Doom is a limit-raising medium-resolution Doom source port based on [[Chocolate Doom]]. It is maintained by [mailto:fabian@greffrath.com Fabian Greffrath].

== Objectives ==
Crispy Doom is a moderate fork of [[Chocolate Doom]] that aims to provide a higher display resolution, raise the [http://doomwiki.org/wiki/Static_limits static limits] of the Doom engine and improve support for the [http://doomwiki.org/wiki/Doom_Classic Doom Classic] IWADs shipped with the [http://doomwiki.org/wiki/Doom_3:_BFG_Edition Doom 3: BFG Edition] and especially for the [http://doomwiki.org/wiki/No_Rest_for_the_Living No Rest For The Living] (NRFTL) expansion while remaining full config file, savegame, netplay and demo [[#Compatibility|compatibility]] with the original.
It intends to keep the changes to the Chocolate Doom code base as minimal as possible. As such, it is currently not planned to include other advanced features in addition to the ones outlined below.

== Changes ==
Crispy Doom 1.0 introduces the following changes with respect to Chocolate Doom 2.0.0:
=== Display Resolution ===
* The display resolution in all four games (Doom, Heretic, Hexen and Strife) has been doubled in both horizontal and vertical direction, resulting in a 640x400 native resolution.
* Additionally, in Crispy Doom, the ''Graphic Detail: Low'' mode has been modified to halve the display resolution also in the vertical direction (unlike Vanilla and Chocolate Doom, which only halve the resolution in the horizontal direction in this mode). As a result, in Crispy Doom in ''Graphic Resolution: Low'' mode the screen is rendered '''exactly''' identical to Chocolate Doom in ''Graphic Resolution: High'' mode.
* An additional ''mode_squash_1p5x'' video mode has been introduced which stretches the screen by factor 1.25 horizontally and by factor 1.5 vertically. This results in a 800x600 display resolution to provide for a intermediate resolution suitable for vintage monitors.

Due to the increased display resolution, the supported video modes differ from Chocolate Doom. The following table gives an overview over the available video modes in Crispy Doom 1.0 and Chocolate Doom 2.0.0. A red backgrond color means that a video mode has been disabled in fullscreen mode for quality concerns. Additionally, all video modes that would result in a display resolution exceeding [en.wikipedia.org/wiki/WUXGA WUXGA] (1920x1200) have been disabled in Crispy Doom.

{| class="wikitable"
! Video Mode
! Chocolate Doom 2.0.0
! Crispy Doom 1.0
|-
| mode_scale_1x   || style="background-color: green" | 320x200   || style="background-color: green" | 640x400
|-
| mode_scale_2x   || style="background-color: green" | 640x400   || style="background-color: green" | 1280x800
|-
| mode_scale_3x   || style="background-color: green" | 960x600   || style="background-color: green" | 1920x1200
|-
| mode_scale_4x   || style="background-color: green" | 1280x800  || style="background-color: red"   | 2560x1600
|-
| mode_scale_5x   || style="background-color: green" | 1600x1000 || style="background-color: red"   | 3200x2000
|-
| mode_stretch_1x || style="background-color: red"   | 320x240   || style="background-color: green" | 640x480
|-
| mode_stretch_2x || style="background-color: green" | 640x480   || style="background-color: green" | 1280x960
|-
| mode_stretch_3x || style="background-color: green" | 960x720   || style="background-color: red"   | 1920x1440
|-
| mode_stretch_4x || style="background-color: green" | 1280x960  || style="background-color: red"   | 2560x1920
|-
| mode_stretch_5x || style="background-color: green" | 1600x1200 || style="background-color: red"   | 3200x2400
|-
| mode_squash_1x  || style="background-color: red"   | 256x200   || style="background-color: red"   | 512x400
|-
| mode_squash_1p5x || -- ||  style="background-color: green" | 800x600
|-
| mode_squash_2x  || style="background-color: red"   | 512x400   || style="background-color: green" | 1024x800
|-
| mode_squash_3x  || style="background-color: green" | 800x600   || style="background-color: green" | 1600x1200
|-
| mode_squash_4x  || style="background-color: green" | 1024x800  || style="background-color: red"   | 2048x1600
|-
| mode_squash_5x  || style="background-color: green" | 1280x1000 || style="background-color: red"   | 2560x2000
|}

=== Raised Limits ===
The static engine limits in all four games have been raised in line with [http://prboom-plus.sourceforge.net/doom-plus.features.html Doom+]. For the four included games this results in the following limits:
{| class="wikitable"
! rowspan="2" | Limit
! colspan="4" | Chocolate 2.0.0 || colspan="4" | Crispy 1.0
|-
! Doom || Heretic || Hexen || Strife || Doom || Heretic || Hexen || Strife
|-
| MAXVISPLANES  || 128 || 128 || 160 || 200 || 128*8 || 128*8 || 160*8 || 200*8
|-
| MAXVISSPRITES || 128 || 128 || 192 || 128 || 128*8 || 128*8 || 192*8 || 128*8
|-
| MAXDRAWSEGS   || 256 || 256 || 256 || 256 || 256*8 || 256*8 || 256*8 || 256*8
|-
| MAXPLATS      || 30  || 30 || 30 || 30 || 30*256 || 30*256 || 30*256 || 30*256
|-
| SAVEGAMESIZE  || c-   || 196608 || - || c- || c- || 196608*16 || - || c-
|-
| MAXLINEANIMS  || 64  || 64 || 64 || 96 || 64*256 || 64*256 || 64*256 || 96*256
|-
| MAXOPENINGS   || 320*64 || 320*64 || 320*64 || 320*64 || 640*64*4 || 640*64*4 || 640*64*4 || 640*64*4
|}

=== Improved Support for the BFG Edition ===
If the IWAD loaded with Crispy Doom is recognized as <tt>doom2.wad</tt> shipped with the Doom 3: BFG Edition, the following changes apply:
* The maximum number of levels (<tt>NUMCMAPS</tt>) is raised to 33, the secret exit in MAP02 leads to MAP33 and the exit there leads back to MAP03.

If furthermore the <tt>nerve.wad</tt> PWAD file can be found and no other PWAD files are loaded, the following additional changes apply:
* The <tt>nerve.wad</tt> PWAD file is automatically loaded at startup, the level name patch lumps (<tt>CWILVxx</tt>) are renamed to not collide with regular Doom 2 ones.
* An additional submenu as added to the New Game menu that allows for selection of either Hell on Earth (i.e. regular Doom 2) of No Rest For The Living.

If otherwise the nerve.wad PWAD file is loaded via the "<tt>-file nerve.wad</tt>" parameter, the following additional changes apply:
* The name of the expansion is shown in the window title and the game banner.
* The <tt>TITLEPIC</tt> lump is replaced with the <tt>DMENUPIC</tt> lump.

If either "No Rest For The Living" is selected from the New Game menu or if the <tt>nerve.wad</tt> PWAD file is loaded via the "<tt>-file nerve.wad</tt>" parameter, the following changes apply:
* The level names in the automap and on the interlevel screen are adjusted.
* The level music and par times are adjusted.
* The secret exit in MAP04 leads to MAP09 and the exit there leads back to MAP05.
* It is not possible to enter levels after MAP09 via ''IDCLEVxx'' cheat.
* There is no "''Now entering...''" screen shown after level 8.
* The intermission screen after level 6 is replaced by another one after level 8 with adjusted text.
* The Doom 2 cast sequence is shown after level 8.

Pleas note that all of the above changes do '''only''' apply for the <tt>doom2.wad</tt> IWAD file from the BFG Edition; they do '''not''' apply for the regular <tt>doom2.wad</tt> IWAD file. Consequently, it is still possible to play the <tt>nerve.wad</tt> PWAD file as a regular PWAD without special treatment if loaded alongside the regular <tt>doom2.wad</tt> IWAD file.

=== Compatibility ===
In order to distinguish the NRFTL levels from the regular Doom 2 levels, Crispy Doom uses the <tt>gameepisode</tt> variable, which is used in Doom 1 to distinguish between the game episodes but is hitherto unused in Doom 2. This means that savegames recorded in Crispy Doom are still '''compatible''' to Cholate Doom (because it ignores the gameepisode variable in Doom 2) but may not be '''identical'''. Consequently, savegames that have been recorded playing NRFTL in Crispy Doom can be loaded in Chocolate Doom if the latter is invoked with "<tt>-file nerve.wad</tt>". On the other hand, savegames that are recorded in Chocolate Doom with the "<tt>-file nerve.wad</tt>" parameter cannot immediately be loaded in Crispy Doom without the "</tt>-file nerve.wad</tt>" parameter. In order to "convert" savegames to Crispy Doom, run it with the "<tt>-file nerve.wad</tt>" parameter, load the savegames and save them again. It should then be possible to load them without the "<tt>-file nerve.wad</tt>" parameter in Crispy Doom.

== Versioning ==
Crispy Doom 1.0 is based on Chocolate Doom 2.0.0 with merged changes from the GIT master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/ecf457ddcbf481b451f37474b057a06e7d843b66 <tt>ecf457ddcb</tt>]. Fur the future it is intended to merge all applicable commits to Chocolate Doom into Crispy Doom as well.

Crispy Doom maintains a mahor and a minor version number. The major version number is increased whenever a new official version of Chocolate Doom is released and the changes merged into Crispy Doom. The minor version number is increased whenever changes have been applied that are not part of an official Chocolate Doom release or do only affect Crispy Doom.

== Download ==
The canonical location for the Crispy doom source code is the github repository:

Binaries for Windows are available here:

[[Category:Forks]]