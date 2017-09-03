[[File:Crispy-doom.png|thumb|right|The Crispy Doom icon]]
Crispy Doom is a limit-removing enhanced-resolution Doom source port based on [[Chocolate Doom]].
<br />Its name means that 640x400 looks "crisp" and is also a slight [http://www.mathsisfun.com/recipie.html reference] to its origin.

== Synopsis ==

Crispy Doom is a friendly fork of [[Chocolate Doom]] that provides a higher display resolution, removes the [[doom:Static_limits|static limits]] of the Doom engine and offers further optional visual, tactical and physical enhancements while remaining entirely config file, savegame, netplay and demo [[#Compatibility|compatibile]] with the original.

== Objectives and features ==

Crispy Doom is a source port that aims to provide a faithful Doom gaming experience while also featuring some user-requested improvements and enhancements. It is forked off of Chocolate Doom to take advantage of its free and open-source code base, portability, accuracy and compatibility with Vanilla Doom.

Its core features are:

* Enhanced 640x400 display resolution, with the original 320x200 resolution still available in the "Graphics Detail: Low" mode.
* Removal of all static engine limits, or at least raising of the less crucial ones.
* Full support for the "Doom Classic" WADs shipped with the "Doom 3: BFG Edition", especially the "No Rest For The Living" episode shipped in the NERVE.WAD file.

Furthermore, the following optional user-visible features are available:

* Jumping.
* Free vertical looking, including mouse look and vertical aiming.
* A new minimal Crispy HUD, displaying only the status bar numbers.
* Colorized status bar numbers, HUD texts and blood sprites for certain monsters.
* Tranlucency for certain sprites and status bar elements in the Crispy HUD.
* Randomly mirrored death animations and corpse sprites.
* Players may walk over or under monsters and hanging corpses.
* Aiming support by a crosshair that may get directly rendered into the game world.
* Centered Weapons when firing, weapon recoil thrust and pitch.
* Reports whenever a secret is revealed.
* Level statistics in the Automap.

All of these features are disabled by default and need to get enabled either in the in-game "Crispness" menu or in the crispy-doom-setup tool. They are implemented in a way that preserves demo-compatibility with Vanilla Doom and network game compatibility with Chocolate Doom. Furthermore, Crispy Doom's savegames and config files are compatible, [[#Compatibility|though not identical]], to Vanilla Doom's.

Crispy Doom strives for maximum compatibility with all "limit-removing Vanilla" maps -- but not Boom or ZDoom maps. Many additional less user-visible features have been implemented, e.g. fixed engine limitations and crashes, fixed rendering bugs, fixed harmless game logic bugs, full support for DEHACKED files and lumps in BEX format, additional and improved cheat codes, an improved Automap, and many more! For a detailed list of features and changes please refer to the release notes below.

=== New command line parameters ===

* <tt>-mergedump <file></tt> merges the PWAD file(s) given on the command line with the IWAD file and writes the resulting data into the <tt><file></tt> given as argument. Might be considered as a replacement for the <tt>DEUSF.EXE</tt> tool.
* <tt>-fliplevels</tt> loads mirrored versions of the maps. '''WARNING: This is the default on April 1st!'''
* <tt>-blockmap</tt> force a (re-)building of the BLOCKMAP lumps for loaded maps.

=== New cheat codes ===

* <tt>TNTWEAP</tt> followed by a weapon number gives or removes this weapon (8 = Chainsaw, 9 = SSG). Try to load Doom 1 with <tt>DOOM2.WAD</tt> as a PWAD and type <tt>TNTWEAP9</tt> to play the SSG in Doom 1.
* <tt>TNTEM</tt>, <tt>KILLEM</tt> or <tt>FHHALL</tt> kill all monsters on the current map (and disables all cube spitters).
* <tt>SPECHITS</tt> triggers all [[doom:Linedef_type|Linedef actions]] on a map at once, no matter if they are enabled by pushing, walking over or shooting or whether they require a key or not. It also triggers all boss monster and Commander Keen actions if possible.
* <tt>NOTARGET</tt> or <tt>FHSHH</tt> toggle deaf and blind monsters that do not act until attacked.
* <tt>TNTHOM</tt> toggles the flashing [[doom:Hall_of_mirrors_effect|HOM]] indicator (disabled by default).
* <tt>SHOWFPS</tt> or <tt>IDRATE</tt> toggle printing the FPS in the upper right corner.
* <tt>NOMOMENTUM</tt> toggles a debug aid for pixel-perfect positioning on a map (not recommended to use in-game).
* <tt>GOOBERS</tt> triggers an easter egg, i.e. an "homage to an old friend". ;-)
* <tt>IDBEHOLD0</tt> disables all currently active power-ups.

== Compatibility ==

* Savegames saved by Crispy Doom are still '''compatible with Vanilla Doom''', but are '''not identical''' anymore to the files that Vanilla Doom would have saved. This is caused by several reasons:
** In order to distinguish the NRFTL levels from the regular Doom 2 levels, Crispy Doom uses the <tt>gameepisode</tt> variable, which is used in Doom 1 to distinguish between the game episodes but is hitherto unused in Doom 2 (e.g. Chocolate Doom ignores the <tt>gameepisode</tt> variable in Doom 2). Consequently, savegames that have been recorded playing NRFTL in Crispy Doom can be loaded in Chocolate Doom if the latter is invoked with "<tt>-file nerve.wad</tt>". On the other hand, savegames that are recorded in Chocolate Doom with the "<tt>-file nerve.wad</tt>" parameter cannot immediately be loaded in Crispy Doom without the "<tt>-file nerve.wad</tt>" parameter. In order to "convert" savegames to Crispy Doom, run it with the "<tt>-file nerve.wad</tt>" parameter, load the savegames and save them again. It should then be possible to load them without the "<tt>-file nerve.wad</tt>" parameter in Crispy Doom.
** Crispy Doom preserves the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields when saving a game by replacing their contents with specific indices. These indices are then converted back into the corresponding pointers in Crispy Doom when the game is loaded again. In Vanilla Doom, however, the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields are disregarded and get overwritten with <tt>NULL</tt> when loading the game. Games saved in Vanilla Doom, on the other hand, still contain pointers in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields, but these will not match any of the indices expected by Crispy Doom and will thus get overwritten with <tt>NULL</tt> as in Vanilla Doom.

* If you are going to share savegames between Crispy Doom and Chocolate Doom, make sure to load all PWADs with the <tt>-merge</tt> parameter in the latter.

* The Crispy HUD is displayed when <tt>blocksize == 12</tt>, which isn't supported by Chocolate Doom. To retain config file compatibility, quit the game with any other view size.

* The "flipped levels" and "SSG available in Doom 1" features introduced in Crispy Doom 1.3 are considered strictly '''experimental'''! They may produce savegames, demo files or netgames that are not compatible with Chocolate Doom, Vanilla Doom or previous versions of Crispy Doom at all. Furthermore, the <tt>SPECHITS</tt> cheat introduced in Crispy Doom 1.5 may leave a map in a completely inconsistent state and games saved after using it may even cause Vanilla to crash by exceeding static limits.

== Download ==

Binaries for Windows XP / Vista / 7 / 8.1 / 10 (both x86 and x64 editions) are available here: 
<br />http://www.greffrath.com/~fabian/crispy-doom_4.1.zip

A supplementary Music Pack that contains the fluidsynth library and a freely-available soundfont is available here:
<br />http://www.greffrath.com/~fabian/crispy-doom-music-pack_2.zip

Crispy Doom can play nearly all variants of Doom. If you don't own any, you may download the [http://cdn.debian.net/debian/pool/non-free/d/doom-wad-shareware/doom-wad-shareware_1.9.fixed.orig.tar.gz Shareware version of Doom], extract it and copy the DOOM1.WAD file into your Crispy Doom directory. Alternatively, you may want to play Crispy Doom with [[Freedoom]] and a MegaWAD.

=== Sources ===

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

After successful compilation the resulting binaries can be found in the <tt>src/</tt> directory.

== History of changes ==

=== Changes of [http://latest.chocolate-doom.org Crispy Doom daily build] from Crispy Doom 4.1 ===

The changes since 4.1 are mostly final perfections of the previously introduced features.

* The (<tt>sprframe->rotate == -1</tt>) case is handled since it has been made non-fatal.

* Interpolation of player missiles for the first tic is suppressed.

* Different spellings of similar cheats in other engines are now supported:<br>Kill all monsters and disable all cube spitters: <tt>TNTEM</tt> (PrBoom+), <tt>KILLEM</tt> (MBF), <tt>FHHALL</tt> (Doom95)<br>Toggle monsters being deaf and blind until attacked: <tt>NOTARGET</tt> (PrBoom+), <tt>FHSHH</tt> (Doom95)<br>Display framerate: <tt>SHOWFPS</tt>, <tt>IDRATE</tt> (PrBoom+)

* Higher scaling video modes up to 3200x2400/3200x2000 are supported on Calinou's request.

* Crashes with maps with unusual map numbers are prevented.

* Music number under- and overflows for both Doom 1 and 2 are prevented.

* Negative ammo values are not allowed anymore thanks to the report by Zodomaniac and AnotherLife.

* Evil grin is now triggered when <tt>IDFA/IDKFA</tt> is used which is 1) rather reasonable by itself as <tt>ID(K)FA</tt> gives weapons and items and 2) prevents the grin from being triggered when the next random item is picked up, as AnotherLife noticed.

* The first extra state is explicitly set to 1089 and the first extra mapthing to 150 to remain in sync with Doom Retro.

* Weapon sprite is removed from clean screenshots only in maximized screen (no HUD) mode now, it was awkward before when the status bar was rendered but the weapon wasn't.

* Calling <tt>pspr</tt> action pointers from <tt>mobj</tt> states and vice versa won't crash the game anymore after Zodomaniac's and JNechaevsky's investigation.

* Menu messages are always printed with shadows regardless of which menu is the current one. Thanks to JNechaevsly for spotting this.

=== Changes of Crispy Doom 4.1 from Crispy Doom 4.0 ===

Crispy Doom 4.1 has been released on June 14, 2017.

This release adds some further polish to the engine both in terms of Vanilla bug fixing and Crispy-specific features.

'''Features'''

* A "Deathmatch 3.0" mode has been added by AXDOOMER.
* Dedicated music tracks for the 4th episode are now supported as lumps following the D_E4Mx name schema. Thanks to Death Egg for the feature request.
* If the player is gibbed or crushed, the death animation is drawn in the Health widget of the Crispy HUD, keeping in sync with and applying the color translation of the actual player sprite. Thanks Zodomaniac for the suggestion.
* Doomguy's mugshot never changes to evil grin or rampage face in god mode, because they don't have the glowing eyes as Zodomaniac and JNechaevsky pointed out.
* Multi-resolution icon files for windows have been added by JNechaevsky and replace the icons formerly contributed by Zodomaniac.

'''Improvements'''

* Game parameters (i.e. -fast, nomonsters, -respawn) are now re-read from command line if and only if a new game is started or a savegame is loaded. This is not performed if playing a demo is involved. Thanks to Zodomaniac for spotting this.
* Savegame names in the Quick Load and Quick Save dialogs are now printed in golden letters, thanks to Zodomaniac for the suggestion.
* Menu items are now drawn with a shadow instead of shading the background when the game is paused ot the menu is active, based on an idea by JNechaevsky.
* Weapon recoil pitch has been refined with the help of JNechaevsky.
* The Weapon Attack Alignment feature now has 4 options (Off, Centered, Horizontal and Bobbing) that have been shaped out in discussion with Im TPhentr, JNechaevsky and Zodomaniac.
* The Zombieman's firing frames are now rendered full-bright. Thanks to JNechaevsky for pointing out this inconsistency.
* Missing sounds are not fatal anymore.
* The "angle" crosshair has been renamed "chevron" and got its vertical offset fixed. Thanks to Woolie Wool for pointing this out.

'''Bug Fixes'''

* Players who left the game are no longer interpolated. Thanks to 38_ViTa_38 for the bug report.
* Line breaks are now dynamically added for lines exceeding the screen width on the intermission screen. Thanks riderr3 for the bug report.
* Weapons are not drawn 1 pixel too high anymore when player is idle. this bug has been re-fixed after being reported by JNechaevsky.
* Weapons aren't changed anymore upon music change with the IDMUS cheat.
* Restoring savegames with flipped levels has been fixed, following the April 1st incident.
* Par times are now drawn conditionally on the intermission screen, as suggested by AXDOOMER.
* A potential crash that would accur when using the IDBEHOLDS cheat with the Crispy HUD in the Shareware version has been eliminated.
* Weapon sound sources have been implemented as requested by JNechaevsky. Sounds from these sources do not interfere with the sounds emitted by the player (e.g. "oof"), except for deliberately preserving the silent BFG trick from Vanilla.
* The Ammo widget now switches colors at correct values, after Zodomaniac's report.
* The "fast" parameters are now really only applied once, thanks to report by Pete-Lawrence.
* Sound clipping in non-DOOM1 MAP08 has been fixed thanks to JNechaevsky and AXDOOMER.
* Button states are now saved in extended savegames as suggested by JNechaevsky and Jeff Doggett.
* The view cannot be changed anymore when playing back demos, resolving the ambiguity reported by Zodomaniac.
* Crispy Doom now supports the SMOOTHED mod, thanks to a missing comma and an extra sprite from DR in the sprnames[] array. Thanks to AnotherLife aka VGA for the patient replies on the forums. Also, A_RandomJump() is now allowed in deaths in the cast sequence and in player weapon states, thanks to the code provided by Brad Harding and Jeff Doggett.
* The Inability to load savegames while a netgame demo is playing has been resolved. Thanks to AXDOOMER for reporting this for Memento Mori PWAD where all in-game demos are netgame ones and JNechaevsky for providing the fix in the code.
* A bug that has caused Revenants firing to desync in-game demos has been fixed, allowing for multi-hour stress tests by loading a PWAD that provides DEMOx lumps containing entire speed-runs.
* A bug has been fixed that caused the demo sequence to crash for The Ultimate Doom and Final Doom if the DEMO4 lump was missing.

Crispy Doom 4.1 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/429fa571c476bf8ffb8aa9994e63db0ef79efe23 <tt>429fa571</tt>].

=== Changes of Crispy Doom 4.0 from Crispy Doom 3.5 ===

Crispy Doom 4.0 has been released on Mar 11, 2017. It is based on Chocolate Doom 2.3.0.

This release introduces some new features and numerous improvements and bug fixes.

'''Features'''

* It is now possible to play demos from savegames, thanks Zodomaniac for the idea.
* It is now possible to delete savegames.
* Different crosshair types have been introduced: cross, angle and dot.
* Additional BOOM and MBF states, sprites and code pointers (supported through BEX format) have been added.
* DEHACKED states up to 4000 and 100 additional sprites and mapthings from Doom Retro have been added.

'''Improvements'''
* Dead players falling off an edge don't make an "oof" sound anymore.
* Extended savegames have been improved to fix restoring of "fireflicker" sectors.
* Fake contrast has been smoothened.
* The Cyberdemon's firing frames are now rendered full-bright.
* Sound is now properly clipped in non-Doom1 MAP08.
* Status bar face hysteresis has been eliminated.
* Toggling "always run" now plays a sound.
* 16 sprite rotations are now supported.
* Negative player health that can be shown optionally.
Thanks to JNechaevsky for suggesting all of the above!
* Smooth freelook and weapon recoil has been implemented by AlexMax, thanks for that!
* DMENUPIC is now used instead of TITLEPIC for the BFG Edition of DOOM2.WAD.
* The screenshot filename limit has been increased according to bzzrak's suggestion.
* E2M9 is shown on the E2 intermission screen if it has been completed.
* The MAXBUTTONS value is doubled to allow for using the "SPECHITS" cheat on E2M5.

'''Code Clean-Up'''
* The "Crispness" menu has been disabled in the Setup tool because of its size and functionality being unable to cover all the options.
* The "Invert Vertical Axis" option in the Setup tool has been replaced with "Permanent Mouse Look".
* DoomBSP's original BLOCKMAP builder is now used instead of MBF's one as Crispy's internal BLOCKMAP builder (with removed limits and support for flipped levels and BLOCKMAP compression).
* Linedefs without tags don't apply locally  anymore even in singleplayer (they send the wrong signal, maps that have this must be considered broken).

'''Bug Fixes'''

* In the BFG Edition the correct music track is played when starting "Hell on Earth" after the "NRFTL" episode. Thanks to Zodomaniac for the bug report.
* Blood spawned by monsters that are being harmed/killed by crushers has been fixed. Thanks to JNechaevsky for the report.
* Flats don't get more distorted the closer they are to the right in Low-Res mode anymore, thanks to JNechaevsky's report.
* Attacking Lost Souls flying over the player now don't bump into him (being meters above ;) and deal damage as Zodomaniac reported.
* While in menus player view is not changed in singleplayer mode and rotated horizontally only in multiplayer mode as pointed out by Zodomaniac.
* Music number overflows at MAP >= 36 are prevented after Zodomaniac's report.
* The game doesn't crash anymore on the intermission screen with maps > 33 which was spotted by Zodomaniac.
* Game parameters are now re-read from the command line when starting a new game, because an in-game demo could change them in between as Zodomaniac noticed.
* When playing demos, NERVE.WAD levels are now skipped only if map <= 9 (the game errored out on demo's MAP10 before).

Crispy Doom 4.0 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/9a257cdf78ee4fa7d3de5bbb5be3ca733b06077f <tt>9a257cdf78</tt>].

'''[[Crispy Doom/Changelog|Previous changes]]'''

== Versioning ==

Crispy Doom maintains a major and a minor version number. The major version number is increased whenever a new official version of Chocolate Doom is released and the changes merged into Crispy Doom. The minor version number is increased whenever changes have been applied that are not part of an official Chocolate Doom release or do only affect Crispy Doom.

== Contact ==
The canonical homepage for Crispy Doom is https://fabiangreffrath.github.io/crispy-doom.
<br />Crispy Doom is maintained by [mailto:fabian@greffXremovethisXrath.com Fabian Greffrath]. 

Please report any bugs, glitches or crashes that you encounter to the GitHub [https://github.com/fabiangreffrath/crispy-doom/issues Issue Tracker].

== Acknowledgement ==
Although I have played the thought of hacking on Chocolate Doom's renderer for quite some time already, it was Brad Harding's [[Doom Retro]] that provided the incentive to finally do it. However, his fork aims at a different direction and I did not take a single line of code from it. Lee Killough's [[doom:MBF|MBF]] was studied and used to debug the code, especially in the form of Team Eternity's [[doom:WinMBF|WinMBF]] source port, which made it easier to compile and run on my machine. And of course there is fraggle's [[Chocolate Doom]] with its exceptionally clean and legible source code. Please let me take this opportunity to appreciate all these authors for their work!

Also, thanks plums of the [https://www.doomworld.com/vb/ Doomworld forums] for beta testing as well as Zodomaniac and JNechaevsky for the continuous flow of support and inspiration during the 3.x/4.x development phase!

== Legalese ==
Doom is &copy; 1993-1996 Id Software, Inc.; 
<br />Boom 2.02 is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman;
<br />PrBoom+ is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman,
&copy; 1999-2000 Jess Haas, Nicolas Kalkhof, Colin Phipps, Florian Schulze,
&copy; 2005-2006 Florian Schulze, Colin Phipps, Neil Stevens, Andrey Budko;
<br />Chocolate Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard; 
Chocolate Hexen is &copy; 1993-1996 Id Software, Inc., &copy; 1993-2008 Raven Software, &copy; 2008 Simon Howard;
<br />Strawberry Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard, &copy; 2008-2010 GhostlyDeath; 
<br />Crispy Doom is additionally &copy; 2014-2017 Fabian Greffrath;
all of the above are released under the [https://www.gnu.org/licenses/gpl-2.0.html GPL-2+].
<br /><br />
SDL 1.2 is &copy; 1997-2012 Sam Lantinga and is released under the [http://www.gnu.org/licenses/lgpl-2.1.html LGPL-2.1+].
<br />SDL_mixer 1.2.12 and SDL_net 1.2.8 are &copy; 1997-2012 Sam Lantinga and are released under the [http://www.zlib.net/zlib_license.html zlib license].
<br /><br />
Secret Rabbit Code (libsamplerate) is &copy; 2002-2011 Erik de Castro Lopo and is released under the [http://www.gnu.org/licenses/gpl-2.0.html GPL-2+].
<br />Libpng is &copy; 1998-2014 Glenn Randers-Pehrson, &copy; 1996-1997 Andreas Dilger, &copy; 1995-1996 Guy Eric Schalnat, Group 42, Inc. and is released under the [http://www.libpng.org/pub/png/src/libpng-LICENSE.txt libpng license].
<br />Zlib is &copy; 1995-2013 Jean-loup Gailly and Mark Adler and is released under the [http://www.zlib.net/zlib_license.html zlib license].
<br /><br />
The Crispy Doom icon (as shown at the top right of this page) is composed of the [https://www.chocolate-doom.org/wiki/images/7/77/Chocolate-logo.png Chocolate Doom icon] and a [[wikipedia:File:Potato-Chips.jpg|photo]] of potato crisps (Utz-brand, grandma's kettle-cooked style) by [https://commons.wikimedia.org/wiki/User:Evan-Amos Evan-Amos] who kindly released it into the [[wikipedia:Public_domain|public domain]]. The current high-resolution version of this icon has been contributed by JNechaevsky (formerly by Zodomaniac).

[[Category:Forks]]