[[File:Crispy-doom.png|thumb|right|The Crispy Doom icon]]
{{Doomwiki}}
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
* Aiming support by a crosshair that may get directly rendered into the game world.
* A new minimal Crispy HUD, displaying only the status bar numbers.
* Clean Screenshot feature, enabling to take screenshots without burning the crosshair and HUD messages into them. If Crispy HUD is on, the weapon and status bar numbers are not imprinted in the screenshot either, so if you need to take a screenshot without any signs of the player's presence, enable the Crispy HUD.
* Colorized status bar numbers, HUD texts and blood sprites for certain monsters.
* Tranlucency for certain sprites and status bar elements in the Crispy HUD.
* Randomly mirrored death animations and corpse sprites.
* Players may walk over or under monsters and hanging corpses.
* Centered Weapons when firing, weapon recoil thrust and pitch.
* Reports whenever a secret is revealed.
* Level statistics in the Automap.

All of these features are disabled by default and need to get enabled either in the in-game "Crispness" menu or in the crispy-doom-setup tool. They are implemented in a way that preserves demo-compatibility with Vanilla Doom and network game compatibility with Chocolate Doom. Furthermore, Crispy Doom's savegames and config files are compatible, [[#Compatibility|though not identical]], to Vanilla Doom's.

Crispy Doom strives for maximum compatibility with all "limit-removing Vanilla" maps -- but not Boom or ZDoom maps. Many additional less user-visible features have been implemented, e.g. fixed engine limitations and crashes, fixed rendering bugs, fixed harmless game logic bugs, full support for DEHACKED files and lumps in BEX format, additional and improved cheat codes, an improved Automap, and many more! For a detailed list of features and changes please refer to the release notes below.

=== New command line parameters ===

* <tt>-mergedump <file></tt> merges the PWAD file(s) given on the command line with the IWAD file and writes the resulting data into the <tt><file></tt> given as argument. Might be considered as a replacement for the <tt>DEUSF.EXE</tt> tool.
* <tt>-fliplevels</tt> loads mirrored versions of the maps (this was the default on April 1st up to version 5.0).
* <tt>-blockmap</tt> forces a (re-)building of the BLOCKMAP lumps for loaded maps.
* <tt>-monosfx</tt> plays all sound effects in mono (new in 5.0).

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
* <tt>IDCLEV00</tt> restarts the current level.
* <tt>IDMUS00</tt> restarts the current music (new in 5.1).
* <tt>VERSION</tt> shows the engine version, build date and SDL version (new in 5.1).

== Compatibility ==

* Savegames saved by Crispy Doom are still '''compatible with Vanilla Doom''', but are '''not identical''' anymore to the files that Vanilla Doom would have saved. This is caused by several reasons:
** In order to distinguish the NRFTL levels from the regular Doom 2 levels, Crispy Doom uses the <tt>gameepisode</tt> variable, which is used in Doom 1 to distinguish between the game episodes but is hitherto unused in Doom 2 (e.g. Chocolate Doom ignores the <tt>gameepisode</tt> variable in Doom 2). Consequently, savegames that have been recorded playing NRFTL in Crispy Doom can be loaded in Chocolate Doom if the latter is invoked with "<tt>-file nerve.wad</tt>". On the other hand, savegames that are recorded in Chocolate Doom with the "<tt>-file nerve.wad</tt>" parameter cannot immediately be loaded in Crispy Doom without the "<tt>-file nerve.wad</tt>" parameter. In order to "convert" savegames to Crispy Doom, run it with the "<tt>-file nerve.wad</tt>" parameter, load the savegames and save them again. It should then be possible to load them without the "<tt>-file nerve.wad</tt>" parameter in Crispy Doom.
** Crispy Doom preserves the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields when saving a game by replacing their contents with specific indices. These indices are then converted back into the corresponding pointers in Crispy Doom when the game is loaded again. In Vanilla Doom, however, the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields are disregarded and get overwritten with <tt>NULL</tt> when loading the game. Games saved in Vanilla Doom, on the other hand, still contain pointers in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields, but these will not match any of the indices expected by Crispy Doom and will thus get overwritten with <tt>NULL</tt> as in Vanilla Doom.

* If you are going to share savegames between Crispy Doom and Chocolate Doom, make sure to load all PWADs with the <tt>-merge</tt> parameter in the latter.

* The Crispy HUD is displayed when <tt>blocksize == 12</tt>, which isn't supported by Chocolate Doom. To retain config file compatibility, quit the game with any other view size.

* The "flipped levels" and "SSG available in Doom 1" features introduced in Crispy Doom 1.3 are considered strictly '''experimental'''! They may produce savegames, demo files or netgames that are not compatible with Chocolate Doom, Vanilla Doom or previous versions of Crispy Doom at all. Furthermore, the <tt>SPECHITS</tt> cheat introduced in Crispy Doom 1.5 may leave a map in a completely inconsistent state and games saved after using it may even cause Vanilla to crash by exceeding static limits.

== Download ==

Binaries for Windows XP / Vista / 7 / 8.1 / 10 (both x86 and x64 editions) are available here: 
<br />http://www.greffrath.com/~fabian/crispy-doom_5.1.zip

A supplementary Music Pack that contains the fluidsynth library and a freely-available soundfont is available here:
<br />http://www.greffrath.com/~fabian/crispy-doom-music-pack_5.1.zip

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

=== Changes of Crispy Doom 5.2 from Crispy Doom 5.1 ===

Crispy Doom 5.2 has been released on February XX, 2018. This release features the new Demos section of Crispness menu,
with options for demo recording/playback timers and progress bar, as well as bug fixes.

'''Features'''
* New 'Demos' section of the Crispness menu, including the recording timer, forward/backward counting playback timer and demo progress bar, now 2 px high.
* Support for MUSINFO lumps (dynamic music changing).

'''Improvements'''
* 'Always Run' is now disabled by default, like in Chocolate Doom, not to confuse players installing Crispy for the first time. Zodomaniac is guilty of this ;) If you prefer Always Run enabled by default, copy the default.cfg and crispy-doom.cfg from your previous installation, you will also avoid re-configuring all the controls.
* Miscellaneous Sound Fixes now include playing the Arch-Vile fire start sound (DSFLAMST) on JNechaevsky's suggestion.
* Palette changes now don't occur when help screen or Crispness menu is active, thanks to mfrancis95 for the contribution.

'''Bug Fixes'''
* Crash on completing NERVE MAP09 when recording/playing back a demo in case NERVE.WAD is auto-loaded with BFG Edition DOOM 2 IWAD has been fixed on Zodomaniac's report.
* Crash on attempt to load a non-existent savegame reported by Zodomaniac has been fixed (also upstream in Chocolate Doom), now the game errors out with a message saying which savegame could not be loaded.
* Crash when finishing NERVE MAP06 while recording a demo has been fixed, thanks to galileo31dos01 for pointing this out.
* Status bar is now backed up with arms widget background to fix the automap causing pixel replacement reported by JNechaevsky.
* Fixes to Chex Quest:<br>-do not show the Episode menu anymore when returning from the Skill menu<br>-explicitly disable the "Colored blood and corpses", "Fix Spectre and Lost Sould blood" and "Randomly mirrored corpses" Crispness menu entries<br>-some consistency fixes (gamemode, nervewadfile)<br>done on request by JNechaevsky.
* Resurrections of mirrored corpses staying mirrored have been fixed by mfrancis95.
* Bullet puffs now don't slip to the edge of a sector when passing through the plane, bullets hitting the floors and ceilings in direct aiming mode now have their puffs displayed at the actual hit spots, thanks to JNechaevsky for noticing.
* Window going out of vertical bounds in non FullHD mode at startup has been fixed, window default size is not set to twice the native framebuffer resolution, thanks to JNechaevsky's report.

Crispy Doom 5.2 is based on Chocolate Doom 3.0.0 and has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/0b50fbde6a49250d4372a3255b1e1fd451326abe <tt>0b50fbde</tt>]

=== Changes of Crispy Doom 5.1 from Crispy Doom 5.0 ===

Crispy Doom 5.1 has been released on January 13, 2018.

Crispy Doom 5.1 offers some new features and improvements, most of them requested by JNechaevsky, and is accompanied by a new Music Pack adapted to the SDL2 version and tested by Zodomaniac (if you are experiencing problems with playing music remove crispy-midiproc.exe from the game folder).

'''Features'''
* Optional Brightmaps for select textures and flats ("walls") and/or pick-up and weapon HUD sprites ("items") have been introduced for all supported IWADs. Thanks to JNechaevsky for this contribution!
* Extended automap colors are now optional, the setting is in the new 'Navigational' section of the Crispness menu.
* A new setting for squatting down the weapon when falling has been introduced to the 'Tactical' section of the Crispness menu.
* A new setting for miscellaneous sound fixes has been introduced to the Audible section of the Crispness menu.
* Demo de-syncing cheats are now disallowed during demo recording or playback as per Zodomaniac's request.
* An option for weapon bobbing with half amplitude during firing has been added.
* Combined card and skull keys are now supported in the status bar (if provided by a PWAD).
* The <tt>VERSION</tt> cheat code showing the engine version, build date and SDL version has been introduced.

'''Improvements'''
* The GPL-licensed <tt>P_CreateBlockMap()</tt> implementation from MBF has been re-introduced.
* The "power up" sound is not played anymore when selecting the berserk fist, according to Paar's request.
* Fake contrast logic is now also applied to mid-textured lines.
* Demo version mismatch has been made non-fatal for in-game demos, the demo just doesn't play if its version differs from the IWAD version. On deliberate launch of a wrong versioned demo the game still exits with an error message.
* The 'A secret is revealed!' message isn't shown anymore when the menu is active.
* The current music now restarts if IDMUS00 is entered.
* If the D_INTRO music is from a PWAD, and D_INTROA is from a different WAD file, the former is played, as galileo31dos01 pointed out.
* The INTERCEPTS limit has been removed.
* The inverted palette effect is now disabled when the player dies (e.g. when telefragged while having the Invulnerability power-up).
* The yellow bonus palette is now reset and never shown if the player dies.

'''Bug Fixes'''
* The player's looking direction is restored from savegames only if either keyboard-look or mouse-look is enabled.
* Binding of the crispy_smoothscaling config variable has been fixed, reported by Paar.
* The missing line not drawn at the bottom of fuzzed sprites has been fixed.
* VSYNC is now disabled if software rendering is enforced.
* Support for compressed ZDBSP nodes has been brought back, it was accidentally removed in 5.0 by the switch to the SDL2-based configure script.

Crispy Doom 5.1 is based on Chocolate Doom 3.0.0 and has merged all changes to the Chocolate Doom master branch, which has meanwhile merged the sdl2-branch, up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/55a1c1c9e5ddc3c4e4e27240860d48bdb5701798 <tt>55a1c1c9</tt>]

=== Changes of Crispy Doom 5.0 from Crispy Doom 4.3 ===

Crispy Doom 5.0 has been released on November 04, 2017.

This is the first release based on SDL2, merging Chocolate Doom's SDL2-branch which has yet to see its own release.

Besides this major transition, it features the following changes and fixes:

* The <tt>NUMCMAPS</tt> variable is now initialized to 32 to fix the missing "Finished" and "Now Entering" lines on the intermission screens for Doom 1 (bug introduced in Crispy 4.2).
* Joystick look up/down (which has been introduced for the three non-Doom games in Choco's SDL2-branch) has been adapted to Doom.
* Smooth scaling of the framebuffer content to the game window (which is the only choice in Choco's SDL2-branch) has been made optional with plain nearest interpolation as the other alternative.
* The 60FPS and 70FPS rendering modes have been removed in favor of proper VSYNC.
* DOS references in the game quit confirmation dialogs have been replaced with the name of the actual operating system.
* A new <tt>-monosfx</tt> command line parameter has been introduced to play all sound effects in mono. Inspired by other Choco derivatives like Russian Doom and Riscos Doom.
* Resolutions above 1920x1200 are now properly supported, thanks to SDL2-based hardware scaling.

Crispy Doom 5.0 has merged all changes to the Chocolate Doom sdl2-branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/413f4ecd7aae41229cc7b40ea3275970dc18cdb4 <tt>413f4ecd</tt>]

'''[[Crispy Doom/Changelog|Previous changes]]'''

== Versioning ==

Crispy Doom maintains a major and a minor version number. The major version number is increased whenever a new official version of Chocolate Doom is released and the changes merged into Crispy Doom. The minor version number is increased whenever changes have been applied that are not part of an official Chocolate Doom release or do only affect Crispy Doom.

== Contact ==
The canonical homepage for Crispy Doom is https://fabiangreffrath.github.io/crispy-doom.
<br />Crispy Doom is maintained by [mailto:fabian@greffXremovethisXrath.com Fabian Greffrath]. 

Please report any bugs, glitches or crashes that you encounter to the GitHub [https://github.com/fabiangreffrath/crispy-doom/issues Issue Tracker].

== Acknowledgement ==
Although I have played the thought of hacking on Chocolate Doom's renderer for quite some time already, it was Brad Harding's [[Doom Retro]] that provided the incentive to finally do it. However, his fork aims at a different direction and I did not take a single line of code from it. Lee Killough's [[doom:MBF|MBF]] was studied and used to debug the code, especially in the form of Team Eternity's [[doom:WinMBF|WinMBF]] source port, which made it easier to compile and run on my machine. And of course there is fraggle's [[Chocolate Doom]] with its exceptionally clean and legible source code. Please let me take this opportunity to appreciate all these authors for their work!

Also, thanks plums of the [https://www.doomworld.com/vb/ Doomworld forums] for beta testing, "release manager" Zodomaniac and "art director" JNechaevsky for the continuous flow of support and inspiration during the 3.x-5.x development cycle and (last but not the least) [http://www.moddb.com/members/cacodemon9000 Cacodemon9000] for his [http://www.moddb.com/games/doom-ii/addons/infested-outpost Infested Outpost] map that helped to track down quite a few bugs!

== Legalese ==
Doom is &copy; 1993-1996 Id Software, Inc.; 
<br />Boom 2.02 is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman;
<br />PrBoom+ is &copy; 1999 id Software, Chi Hoang, Lee Killough, Jim Flynn, Rand Phares, Ty Halderman,
&copy; 1999-2000 Jess Haas, Nicolas Kalkhof, Colin Phipps, Florian Schulze,
&copy; 2005-2006 Florian Schulze, Colin Phipps, Neil Stevens, Andrey Budko;
<br />Chocolate Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard; 
Chocolate Hexen is &copy; 1993-1996 Id Software, Inc., &copy; 1993-2008 Raven Software, &copy; 2008 Simon Howard;
<br />Strawberry Doom is &copy; 1993-1996 Id Software, Inc., &copy; 2005 Simon Howard, &copy; 2008-2010 GhostlyDeath; 
<br />Crispy Doom is additionally &copy; 2014-2018 Fabian Greffrath;
all of the above are released under the [https://www.gnu.org/licenses/gpl-2.0.html GPL-2+].
<br /><br />
SDL 2.0, SDL_mixer 2.0 and SDL_net 2.0 are &copy; 1997-2016 Sam Lantinga and are released under the [http://www.gzip.org/zlib/zlib_license.html zlib license].
<br /><br />
Secret Rabbit Code (libsamplerate) is &copy; 2002-2011 Erik de Castro Lopo and is released under the [http://www.gnu.org/licenses/gpl-2.0.html GPL-2+].
<br />Libpng is &copy; 1998-2014 Glenn Randers-Pehrson, &copy; 1996-1997 Andreas Dilger, &copy; 1995-1996 Guy Eric Schalnat, Group 42, Inc. and is released under the [http://www.libpng.org/pub/png/src/libpng-LICENSE.txt libpng license].
<br />Zlib is &copy; 1995-2013 Jean-loup Gailly and Mark Adler and is released under the [http://www.zlib.net/zlib_license.html zlib license].
<br /><br />
The Crispy Doom icon (as shown at the top right of this page) is composed of the [https://www.chocolate-doom.org/wiki/images/7/77/Chocolate-logo.png Chocolate Doom icon] and a [[wikipedia:File:Potato-Chips.jpg|photo]] of potato crisps (Utz-brand, grandma's kettle-cooked style) by [https://commons.wikimedia.org/wiki/User:Evan-Amos Evan-Amos] who kindly released it into the [[wikipedia:Public_domain|public domain]]. The current high-resolution version of this icon has been contributed by JNechaevsky (formerly by Zodomaniac).

[[Category:Forks]]