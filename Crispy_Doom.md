[[File:Crispy-doom.png|thumb|right|The Crispy Doom icon]]
Crispy Doom is a limit-raising medium-resolution Doom source port based on [[Chocolate Doom]].
Its name means that 640x400 looks "crisp" and is also a slight [http://www.mathsisfun.com/recipie.html reference] to its origin.

== Objectives ==
Crispy Doom is a moderate fork of [[Chocolate Doom]] that aims to provide a higher display resolution, raise the [[doom:Static_limits|static limits]] of the Doom engine and offers further optional visual, technical and gameplay-affecting enhancements while remaining entirely config file, savegame, netplay and demo [[#Compatibility|compatibile]] with the original.

== Changes of Crispy Doom 1.2 from Crispy Doom 1.1 ==
Crispy Doom 1.2 is mostly a bug fix release to fix the jerky mouse look in Crispy Doom 1.1. If you were unsatisfied with the mouse look performance of Crispy Doom 1.1 it is highly recommended to upgrade to Crispy Doom 1.2:

* Unjerkify mouse look.
** In Crispy Doom 1.1 vertical mouse movement changed the <tt>look</tt> variable which decided how the actual <tt>player->lookdir</tt> variable will be changed in the next game tic. However, the <tt>look</tt> variable is intended for keyboard use and changes the lookdir in rather coarse steps. The code has been changed to now act directly on the <tt>player->lookdir</tt> variable which provides for a much smoother mouse look.
** Mouse sensitivity selection is moved into a separate sub-menu of the Options menu.
** Allow to set separate values for horizontal and vertical mouse sensitivity in both the Options menu and in ''crispy-doom-setup''.
** Increase mouse sensitivity thermometer range up to 20.
** Fix a crash in the Options menu when mouse sensitivity exceeds the maximum value. Instead, allow to exceed the thermometer range and print values next to it.
** Fix slopes for bullets and missiles that would not have hit a target anyway. This means that missed shots will now go into the actual vertical direction looked into. However, auto-aim will still work and guide shots to their aim. This feature is only enabled in single-player games (though probably harmless).

* Monster death sprites and corpses are now flipped randomly. While the idea is stolen from Doom Retro, the implementation is completely different. The flipping decision is based on the value of <tt>thing->health</tt>, which is randomized in Doom, since all damage done by weapons is already randomized. Once a monster is dead (i.e. <tt>thing->flags & MF_CORPSE</tt>), this value remains constant. Although probably harmless, this feature is also only available in single-player games.
* Fix different view frames for normal fullscreen mode and Crispy HUD.
* Fix a crash when attempting to test settings from ''crispy-doom-setup'', merged from Chocolate Doom.
* Fix "fast doors make two closing sounds" and "fast doors reopening with wrong sound" engine bugs.

== Changes of Crispy Doom 1.1 from Crispy Doom 1.0 ==
=== Visual Enhancements ===
* '''Minimal HUD:''' When the view size is increased one step beyond fullscreen, a minimal HUD is displayed which only shows the numbers of the status bar without its background.
* '''Colored Patches and Sprites:''' Color translation lookup tables have been ported over from Boom 2.02. They can be used to (optionally) colorize the numbers on the status bar, the HUD font and also the blood of certain monsters.
** '''Colored Status Bar Number:''' The numbers displayed in the status bar or the minimal HUD can get colorized depending on their value. If enabled, health is colored red, yellow, green or blue for values up to 25%, 50%, 100% and above 100% respectively. Ammo is colored red, yellow and green for values up to 25%, 50%, 100% of the ''initial'' maximum ammo, respectively. Excess ammo, that can only be carried when a backpack has been found, gets colored blue. Armor is colored green or blue depending on the type of armor the player currently wears, red means no armor. Colored numbers in the status bar can be enabled in the ''crispy-doom-setup'' tool and are disabled by default.
** '''Colored Blood:''' Blood is now colored depending on the monster class. Spectres and invisible players will now bleed spectre blood, Lost Souls will now bleed Puffs (''since spawning Puffs demands the RNG differently than spawning Blood, this feature is only enabled in single player games''), Cacodemons bleed blue blood and Hell Knights and Barons of Hell bleed green blood. ''This feature required pointing the <tt>target</tt> field of the blood <tt>mobj_t struct</tt> to the monster <tt>mobj_t struct</tt> and furthermore the addition of another field to the <tt>vissprite_t struct</tt> to keep track of the object that a sprite belongs to. This is considered [http://www.doomworld.com/vb/post/1254800 harmless], though).
* '''Translucency:''' Translucency support has been ported over from Boom 2.02. As in Boom, the nececssary color tinting lookup table is created once at startup and then cached on the hard disk for subsequent uses, alternatively it can be supplied as a lump or in a PWAD file. The same objects as in Boom 2.02 have been tagged as translucent in <tt>mobjinfo[]</tt>. Additionally, rocket and barrel explosions, Lost Soul and Pain Elemental explosions, and the explosions of the Boss Brain (Icon of Sin) have been tagged translucent. Also, if a monster gets resurrected by an Arch Vile from a pool of blood and turns into a "[http://doomwiki.org/wiki/Ghost_monster ghost monster]" it will rise from the dead as translucent. Translucency can generally be enabled in the ''crispy-doom-setup'' tool and is disabled by default.
* '''Shaded Menus:''' The background is shaded when a menu is active or when the game is paused. Furthermore, menu entries that currently make no sense, e.g. ''Save Game'' or ''End Game'' when no game is active, are shaded. Also, empty savegame slots are shaded in the ''Load Game'' menu.

=== Enhancements affecting gameplay ===
* '''Free Look:''' Free look support has been ported over from Chocolate Hexen. It is now possible to look up and down up to a certain degree using the keyboard or mouse. Using the latter, it is possible to change the viewing angle by pressing a certain key and moving the mouse vertically. Single-clicking that key without moving the mouse will center the view again. It is furthermore possible to activate permanent mouse look. Mouse viewing may feel a bit jerky, because the view angle is only increased in integers. To enable mouse viewing without also enabling vertical mouse movement, the "<tt>-novert</tt>" command line parameter had to be modified to only apply to vertical ''translational'' movement. Since both free look and permanent mouse look require stretching the sky texture, they need to get enabled in the ''crispy-doom-setup'' tool and are disabled by default.
* '''Jumping:''' Jumping support has been ported over from Chocolate Hexen. It needs to get enabled in the ''crispy-doom-setup'' tool and is of course disabled by default. Since jumping involves in-air movement which may cause demos or network games to desync, this feature is entirely disabled when not in a single player game.
: ''To achieve the above two features without sacrificing savegame compatibility with Chocolate Doom, a new <tt>player2_t struct</tt> has been introduced into the code to hold the additional player-speficic variables. This means that viewing angle and jumping state are not saved in savegames.''
* '''Autorun:''' When the autorun feature is active, using the "run" key will result in walking at normal speed.
* '''Laser Pointer:''' A red laser pointer dot can be shown in the center of the screen to help for aiming. Optionally, the color of the dot can change from red to yellow if a target is within reach. Both options need to be enabled in the ''crispy-doom-setup'' tool and are disabled by default.
* '''Secret Message:''' A centered "A secret is revealed!" message is printed in a golden font and a sound is played when a secret is found. This can be enabled in the ''crispy-doom-setup'' tool and is disabled by default.
* '''Automap stats:''' Additional level statistics can be shown in the automap, including the number of kills, items and secrets as well as the level time. This feature needs to be enabled in the ''crispy-doom-setup'' tool and is disabled by default.
* '''Ammo Bob:''' Ammo or weapons released by killed enemies will slightly bob vertically (''this feature is only available in a single player game'').
* '''Engine Bugs:''' The "Ouch Face" and the "Picked up a Medikit that you really need" messages are shown as intended.

=== Technical Enhancements ===
* '''Vertical Mouse Movement:''' Separate values for mouse acceleration and threshold can now be applied for the vertical axis in the ''crispy-doom-setup'' tool.
* '''PNG Screenshots:''' Screenshots can now be taken in PNG format. This feature has been merged from Chocolate Doom and is now the default in Crispy Doom. Also, a dedicated key can be set for taking screenshots, including the "Print Screen" key.
* '''Automatic loading of DEHACKED lumps:''' Chocolate Doom has got the ability to load DEHACKED lumps embedded in PWAD files via the "<tt>-dehlump</tt>" command line parameter. This feature has been merged into Crispy Doom and is now the default. It can be disabled, though, via the "<tt>-nodehlump</tt>" or "<tt>-nodeh</tt>" command line parameters. The latter does additionally disable the special treatment of the <tt>chex.wad</tt> and <tt>hacx.wad</tt> IWAD files and the <tt>nerve.wad</tt> PWAD file. Furthermore, error handling has been made more tolerant for embedded and automatically loaded DEHACKED lumps: If errors are detected, error messages are printed, but the game does not abort.
* '''Wolf SS:''' Although all resources of the Wolf SS enemy have been entirely removed from the BFG Edition <tt>doom2.wad</tt> IWAD file, there is still one present in the included [http://doomwiki.org/wiki/MAP33:_Betray_%28Xbox_Doom_II%29 MAP33]. Therefore, all Wolf SS monsters are replaced with Former Humans in single player games when the BFG Edition <tt>doom2.wad</tt> IWAD is in use.
* '''No-clip Cheats:''' Both <tt>idspispopd</tt> and <tt>idclip</tt> cheats are allowed in both Doom and Doom II.
* '''Par Times:''' Par times for Episode 4 of The Ultimate Doom have been taken over from the BFG Edition. Also, the par time for MAP33 of the Doom II BFG Edition now reads "SUCKS!" as in the Xbox Doom II version. Both were added in a manner that does not interfere with <tt>statdump</tt>'s output.
* '''Sensible Defaults:''' Some default configuration values have been changed. For example, the ENDOOM screen is not displayed, the <tt>vanilla_savegame_limit</tt> and <tt>vanilla_demo_limit</tt> size limits are disabled, autorun is enabled and the game is started in full width (<tt>screenblocks = 10</tt>) by default.
* '''Default Keys:''' The default keys for forward, backward, strafe left and right have been changed to '''W''', '''S''', '''A''' and '''D''', respectively. However, it is still possible to control the game with the cursor keys.

=== Bug Fixes ===
* The weapon sprite was one pixel too high when the player was idle: https://github.com/fabiangreffrath/crispy-doom/issues/1 .
* The "No rule to make target crispy-server.6, needed by all-am" Make error was fixed: https://github.com/fabiangreffrath/crispy-doom/issues/2 .

=== Crispy-Doom-Setup ===
Crispy Doom now comes with its own dedicated setup tool called ''crispy-doom-setup''. Instead of <tt>chocolate-doom-setup</tt>'s "Compatibility" section it has one called "Crispness" which allows to selectively activate the following features:
* Enable translucency
* Show colored numbers in status bar
* Show level stats in automap
* Show secrets revealed message
* Show laser pointer
* Change laser pointer color on target
* Enable jumping [*]
* Enable free look [*]
* Enable permanent mouse look

: The items marked with an asterisk require the setting of additional keys in the "Keyboard" or "Mouse" sections, respectively.

=== Non-Doom Ports ===
The non-Doom games that are part of Chocolate Doom have fallen behind in terms of development and haven't seen any significant changes since Crispy Doom 1.0. Thus, only Doom is included in the 1.1 release and will be from now on.

== Changes of Crispy Doom 1.0 from Chocolate Doom 2.0.0 ==
=== Display Resolution ===
* The display resolution in all four games (Doom, Heretic, Hexen and Strife) has been doubled in both horizontal and vertical direction, resulting in a 640x400 native resolution.
* Additionally, in Crispy Doom, the ''Graphic Detail: Low'' mode has been modified to halve the display resolution also in the vertical direction (unlike Vanilla and Chocolate Doom, which only halve the resolution in the horizontal direction in this mode). As a result, in Crispy Doom in ''Graphic Resolution: Low'' mode the screen is rendered '''exactly''' identical to Chocolate Doom in ''Graphic Resolution: High'' mode.
* An additional ''mode_squash_1p5x'' video mode has been introduced which stretches the screen by factor 1.25 horizontally and by factor 1.5 vertically. This results in a 800x600 display resolution to provide for a intermediate resolution suitable for vintage monitors.

Due to the increased display resolution, the supported video modes differ from Chocolate Doom. The following table gives an overview over the available video modes in Crispy Doom 1.0 and Chocolate Doom 2.0.0. A red backgrond color means that a video mode has been disabled in fullscreen mode for quality concerns. Additionally, all video modes that would result in a display resolution exceeding [http://en.wikipedia.org/wiki/WUXGA WUXGA] (1920x1200) have been disabled in Crispy Doom.

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
| SAVEGAMESIZE  || --   || 196608 || -- || -- || -- || 196608*16 || -- || --
|-
| MAXLINEANIMS  || 64  || 64 || 64 || 96 || 64*256 || 64*256 || 64*256 || 96*256
|-
| MAXOPENINGS   || 320*64 || 320*64 || 320*64 || 320*64 || 640*64*4 || 640*64*4 || 640*64*4 || 640*64*4
|}

=== Improved Support for the BFG Edition ===
Chocolade Doom has no support for ''No Rest for the Living'', because its maps require a limit-removing source port. However, with its raised static limits there is no more reason to not add full support for this expansion to Crispy Doom.

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

Please note that all of the above changes do '''only''' apply for the <tt>doom2.wad</tt> IWAD file from the BFG Edition; they do '''not''' apply for the regular <tt>doom2.wad</tt> IWAD file. Consequently, it is still possible to play the <tt>nerve.wad</tt> PWAD file as a regular PWAD without special treatment if loaded alongside the regular <tt>doom2.wad</tt> IWAD file.

== Compatibility ==
* In order to distinguish the NRFTL levels from the regular Doom 2 levels, Crispy Doom uses the <tt>gameepisode</tt> variable, which is used in Doom 1 to distinguish between the game episodes but is hitherto unused in Doom 2. This means that savegames recorded in Crispy Doom are still '''compatible''' to Cholate Doom (because it ignores the <tt>gameepisode</tt> variable in Doom 2) but may not be '''identical'''. Consequently, savegames that have been recorded playing NRFTL in Crispy Doom can be loaded in Chocolate Doom if the latter is invoked with "<tt>-file nerve.wad</tt>". On the other hand, savegames that are recorded in Chocolate Doom with the "<tt>-file nerve.wad</tt>" parameter cannot immediately be loaded in Crispy Doom without the "<tt>-file nerve.wad</tt>" parameter. In order to "convert" savegames to Crispy Doom, run it with the "<tt>-file nerve.wad</tt>" parameter, load the savegames and save them again. It should then be possible to load them without the "<tt>-file nerve.wad</tt>" parameter in Crispy Doom.

: Please note that the introduction of full support for NRFTL means breaking with Chocolate Doom's objectives to remain as close to the original DOS <tt>doom.exe</tt> as possible.

* The minimal Crispy Doom HUD is displayed when <tt>blocksize == 12</tt>, which isn't supported by Chocolate Doom. To retain config file compatibility, quit the game with any other view size.

== Versioning ==
Crispy Doom 1.0 is based on Chocolate Doom 2.0.0 with merged changes from the GIT master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/ecf457ddcbf481b451f37474b057a06e7d843b66 <tt>ecf457ddcb</tt>].
Crispy Doom 1.1 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/a80aa343a53c3dd3db2434a52d70de72ec4df955 <tt>a80aa343a5</tt>].
Crispy Doom 1.2 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/a1b066a0eb0d2cf5d17ad68ca833fcdd21f80725 <tt>a1b066a0eb</tt>].

Crispy Doom maintains a major and a minor version number. The major version number is increased whenever a new official version of Chocolate Doom is released and the changes merged into Crispy Doom. The minor version number is increased whenever changes have been applied that are not part of an official Chocolate Doom release or do only affect Crispy Doom.

== Download ==
The Crispy Doom source code is available at GitHub: https://github.com/fabiangreffrath/crispy-doom.

It can be [https://github.com/fabiangreffrath/crispy-doom/releases downloaded in either ZIP or TAR.GZ format] 
or cloned via

 git clone https://github.com/fabiangreffrath/crispy-doom.git

Compilation on Debian/Ubuntu systems should be as simple as

 sudo apt-get install build-essential automake
 sudo apt-get build-dep chocolate-doom

to install the prerequisites and then

 cd crispy-doom
 autoreconf -vif
 ./configure
 make

=== Binaries ===
Binaries for Windows (x86) are available here:
http://www.greffrath.com/~fabian/crispy-doom_1.2.zip

They are statically linked against libsamplerate, libpng and zlib (see below).

== Contact ==
The canonical homepage for Crispy Doom is http://fabiangreffrath.github.io/crispy-doom.
Crispy Doom is maintained by [mailto:fabian@greffXremovethisXrath.com Fabian Greffrath]. Please report any bugs, glitches or crashes that you encounter to the GitHub [https://github.com/fabiangreffrath/crispy-doom/issues Issue Tracker].

== Acknowledgement ==
Although I have played the thought of hacking on Chocolate Doom's renderer for quite some time already, it was Brad Harding's [[Doom Retro]] that provided the incentive to finally do it. However, his fork aims at a different direction and I did not take a single line of code from it. Lee Killough's [[doom:MBF|MBF]] was studied and used to debug the code, especially in the form of Team Eternity's [[doom:WinMBF|WinMBF]] source port, which made it easier to compile and run on my machine. And of course there is fraggle's [[Chocolate Doom]] with its exceptionally clean and legible source code. Please let me take this opportunity to appreciate all these authors for their work!

Also, thanks plums of the [http://www.doomworld.com/vb/ Doomworld forums] for beta testing.

== Legalese ==
Doom is &copy; 1993-1996 Id Software, Inc.; 
Boom 2.02 is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman;
PrBoom+ is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman,
&copy; 1999-2000 Jess Haas, Nicolas Kalkhof, Colin Phipps, Florian Schulze,
&copy; 2005-2006 Florian Schulze, Colin Phipps, Neil Stevens, Andrey Budko;
Chocolate Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard; 
Chocolate Hexen is &copy; 1993-1996 Id Software, Inc., &copy; 1993-2008 Raven Software, &copy; 2008 Simon Howard;
Strawberry Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard, &copy; 2008-2010 GhostlyDeath; 
Crispy Doom is additionally &copy; 2014 Fabian Greffrath;
all of the above are released under the [http://www.gnu.org/licenses/gpl-2.0.html GPL-2+].

SDL 1.2 is &copy; 1997-2012 Sam Lantinga and is released under the [http://www.gnu.org/licenses/lgpl-2.1.html LGPL-2.1+].
SDL_mixer 1.2.12 and SDL_net 1.2.8 are &copy; 1997-2012 Sam Lantinga and are released under the [http://www.zlib.net/zlib_license.html zlib license].

Secret Rabbit Code (libsamplerate) is &copy; 2002-2011 Erik de Castro Lopo and is released under the [http://www.gnu.org/licenses/gpl-2.0.html GPL-2+].
Libpng is &copy; 1998-2014 Glenn Randers-Pehrson, &copy; 1996-1997 Andreas Dilger, &copy; 1995-1996 Guy Eric Schalnat, Group 42, Inc. and is released under the [http://www.libpng.org/pub/png/src/libpng-LICENSE.txt libpng license].
Zlib is &copy; 1995-2013 Jean-loup Gailly and Mark Adler and is released under the [http://www.zlib.net/zlib_license.html zlib license].

The Crispy Doom icon (as shown at the top right of this page) is composed of the [http://www.chocolate-doom.org/wiki/index.php/File:Chocolate-logo.png Chocolate Doom icon] and a [https://en.wikipedia.org/wiki/File:Potato-Chips.jpg photo] of potato crisps (Utz-brand, grandma's kettle-cooked style) by [https://commons.wikimedia.org/wiki/User:Evan-Amos Evan-Amos] who kindly released it into the [https://en.wikipedia.org/wiki/Public_domain public domain].

[[Category:Forks]]