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

<br />All of these features are disabled by default and need to get enabled either in the in-game "Crispness" menu or in the crispy-doom-setup tool. They are implemented in a way that preserves demo-compatibility with Vanilla Doom and network game compatibility with Chocolate Doom. Furthermore, Crispy Doom's savegames and config files are compatible, [[#Compatibility|though not identical]], to Vanilla Doom's.

Crispy Doom strives for maximum compatibility with all "limit-removing Vanilla" maps -- but not Boom or ZDoom maps. Many additional less user-visible features have been implemented, e.g. fixed engine limitations and crashes, fixed rendering bugs, fixed harmless game logic bugs, full support for DEHACKED files and lumps in BEX format, additional and improved cheat codes, an improved Automap, and many more! For a detailed list of features and changes please refer to the release notes below.

=== New command line parameters ===

* <tt>-mergedump <file></tt> merges the PWAD file(s) given on the command line with the IWAD file and writes the resulting data into the <tt><file></tt> given as argument. Might be considered as a replacement for the <tt>DEUSF.EXE</tt> tool.
* <tt>-fliplevels</tt> loads mirrored versions of the maps.
* <tt>-blockmap</tt> force a (re-)building of the BLOCKMAP lumps for loaded maps.

=== New cheat codes ===

* <tt>TNTWEAP</tt> followed by a weapon number gives or removes this weapon (8 = Chainsaw, 9 = SSG). Try to load Doom 1 with <tt>DOOM2.WAD</tt> as a PWAD and type <tt>TNTWEAP9</tt> to play the SSG in Doom 1.
* <tt>TNTEM</tt> kills all monsters on the current map (and disables all cube spitters).
* <tt>SPECHITS</tt> triggers all [[doom:Linedef_type|Linedef actions]] on a map at once, no matter if they are enabled by pushing, walking over or shooting or whether they require a key or not. It also triggers all boss monster and Commander Keen actions if possible.
* <tt>NOTARGET</tt> toggles deaf and blind monsters that do not act until attacked.
* <tt>TNTHOM</tt> toggles the flashing [[doom:Hall_of_mirrors_effect|HOM]] indicator (disabled by default).
* <tt>SHOWFPS</tt> toggles printing the FPS in the upper right corner.
* <tt>NOMOMENTUM</tt> toggles a debug aid for pixel-perfect positioning on a map (not recommended to use in-game).
* <tt>GOOBERS</tt> triggers an easter egg, i.e. an "homage to an old friend". ;-)
* <tt>IDBEHOLD0</tt> disables all currently active power-ups.

== Compatibility ==

* Savesgames saved by Crispy Doom are still '''compatible with Vanilla Doom''', but are '''not identical''' anymore to the files that Vanilla Doom would have saved. This is caused by several reasons:

** In order to distinguish the NRFTL levels from the regular Doom 2 levels, Crispy Doom uses the <tt>gameepisode</tt> variable, which is used in Doom 1 to distinguish between the game episodes but is hitherto unused in Doom 2 (e.g. Chocolate Doom ignores the <tt>gameepisode</tt> variable in Doom 2). Consequently, savegames that have been recorded playing NRFTL in Crispy Doom can be loaded in Chocolate Doom if the latter is invoked with "<tt>-file nerve.wad</tt>". On the other hand, savegames that are recorded in Chocolate Doom with the "<tt>-file nerve.wad</tt>" parameter cannot immediately be loaded in Crispy Doom without the "<tt>-file nerve.wad</tt>" parameter. In order to "convert" savegames to Crispy Doom, run it with the "<tt>-file nerve.wad</tt>" parameter, load the savegames and save them again. It should then be possible to load them without the "<tt>-file nerve.wad</tt>" parameter in Crispy Doom.

** Crispy Doom preserves the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields when saving a game by replacing their contents with specific indices. These indices are then converted back into the corresponding pointers in Crispy Doom when the game is loaded again. In Vanilla Doom, however, the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields are disregarded and get overwritten with <tt>NULL</tt> when loading the game. Games saved in Vanilla Doom, on the other hand, still contain pointers in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields, but these will not match any of the indices expected by Crispy Doom and will thus get overwritten with <tt>NULL</tt> as in Vanilla Doom.

* If you are going to share savegames between Crispy Doom and Chocolate Doom, make sure to load all PWADs with the <tt>-merge</tt> parameter in the latter.

* The Crispy HUD is displayed when <tt>blocksize == 12</tt>, which isn't supported by Chocolate Doom. To retain config file compatibility, quit the game with any other view size.

* The "flipped levels" and "SSG available in Doom 1" features introduced in Crispy Doom 1.3 are considered strictly '''experimental'''! They may produce savegames, demo files or netgames that are not compatible with Chocolate Doom, Vanilla Doom or previous versions of Crispy Doom at all. Furthermore, the <tt>SPECHITS</tt> cheat introduced in Crispy Doom 1.5 may leave a map in a completely inconsistent state and games saved after using it may even cause Vanilla to crash by exceeding static limits.

== Download ==

Binaries for Windows XP / Vista / 7 / 8.1 / 10 (both x86 and x64 editions) are available here: 
<br />http://www.greffrath.com/~fabian/crispy-doom_3.5.zip

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

'''Changes of Crispy Doom 3.5 from Crispy Doom 3.4'''

Crispy Doom 3.5 has been released on Dec 27, 2016.
This release introduces some major new features as well as refinements and bug fixes.

'''Features'''

* Total time for all completed levels is now counted, mostly taken from PrBoom+.
* Extended savegames have been implemented that store the name of the WAD the current map has been loaded from. It can be toggled in the Crispness->Tactical menu and is enabled by default. When attempting to load a savegame, it is checked whether the map is restored from the same WAD file and if this check fails, the player is informed and given the choice to cancel or continue loading the savegame.
* While at it, total level times, extra kills (i.e. respawned or resurrected monsters), [[doom:Sector_type_17_is_disabled_after_loading_a_saved_game|sectors with fireflicker]], Automap markers and the players' lookdirs are also stored in extended savegames.
* Furthermore, [[doom:Moving_platform_heights_not_preserved_in_saved_games|plats in stasis]] are now properly saved and restored.

'''Improvements'''

* New 128x128 icons by Zodomaniac.
* Playing sounds in full length is now optional. Thanks to mason1729 and Danfun64 for the suggestion.
* Overflow simulation into the frame table has been dropped, so that e.g. the <tt>vbatman.deh</tt> patch for Batman Doom is not necessary anymore.
* Bullet puffs are now drawn in outdoor areas. Thanks to Ptoing for the idea.
* Certain projectiles (e.g. the player's plasma gun and some enemies' weaponry) aren't absorbed by outdoor walls anymore. Instead, missiles are set into the last safe state in their death state sequence. Thanks to plumsinus for the suggestion.
* In Chex Quest, the kill stats are not called "kills" anymore, as in this game you don't "kill monsters" but "return Flemoids" back to where they came from.
* Weapon sprites may still be rendered centered, but their actual coordinates will be left untouched.
* Sprite offsets for mirrored sprites have been fixed.
* Brain spitters are now disabled when the TNTEM cheat kicks in, by setting <tt>numbraintargets</tt> to <tt>-1</tt>
* Blood and bullet puff sprites are now randomly flipped.

'''Bug Fixes'''

* Proper music is played if a map is reloaded from a savegame during the intermission screen. Thanks to Zodomaniac for the bug report.
* The rendering of the "Loading Disk Icon" has been repaired.
* The "Tutti Frutti Effect" is also fixed in Low Resolution mode now. Thanks to Vesperas for noticing.
* MBF sky transfers with tag 0 have been fixed. Linedefs 271 & 272 are allowed to use tag 0 to affect the whole level. Thanks to Jeffdoggett for the heads-up and the code example.
* The yellow key in TNT MAP31 isn't marked as multi-player only anymore, arranged alongside the fix for the Wolf SS with the BFG-Edition IWADs. Thanks to Andrewj for the suggestion and Jeffdoggett for the code example.
* The SMMU swirling flats implementation has been repaired, thanks to Bzzrak for noticing.
* A crash is fixed when attempting to play music in a map > 9 (e.g. during demo playback) when NERVE.WAD is loaded. Thanks to nbmrjuhneibkr for the report.

Crispy Doom 3.5 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/5d3c0e0a824abd076bacffcfd01a6df5765435fe <tt>5d3c0e0a82</tt>].

'''[[Crispy Doom/Changelog|Previous changes]]'''

== Versioning ==

Crispy Doom maintains a major and a minor version number. The major version number is increased whenever a new official version of Chocolate Doom is released and the changes merged into Crispy Doom. The minor version number is increased whenever changes have been applied that are not part of an official Chocolate Doom release or do only affect Crispy Doom.

== Contact ==
The canonical homepage for Crispy Doom is https://fabiangreffrath.github.io/crispy-doom.
<br />Crispy Doom is maintained by [mailto:fabian@greffXremovethisXrath.com Fabian Greffrath]. 

Please report any bugs, glitches or crashes that you encounter to the GitHub [https://github.com/fabiangreffrath/crispy-doom/issues Issue Tracker].

== Acknowledgement ==
Although I have played the thought of hacking on Chocolate Doom's renderer for quite some time already, it was Brad Harding's [[Doom Retro]] that provided the incentive to finally do it. However, his fork aims at a different direction and I did not take a single line of code from it. Lee Killough's [[doom:MBF|MBF]] was studied and used to debug the code, especially in the form of Team Eternity's [[doom:WinMBF|WinMBF]] source port, which made it easier to compile and run on my machine. And of course there is fraggle's [[Chocolate Doom]] with its exceptionally clean and legible source code. Please let me take this opportunity to appreciate all these authors for their work!

Also, thanks plums of the [https://www.doomworld.com/vb/ Doomworld forums] for beta testing.

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
The Crispy Doom icon (as shown at the top right of this page) is composed of the [https://www.chocolate-doom.org/wiki/images/7/77/Chocolate-logo.png Chocolate Doom icon] and a [[wikipedia:File:Potato-Chips.jpg|photo]] of potato crisps (Utz-brand, grandma's kettle-cooked style) by [https://commons.wikimedia.org/wiki/User:Evan-Amos Evan-Amos] who kindly released it into the [[wikipedia:Public_domain|public domain]]. The high-resolution version of this icon has been contributed by Zodomaniac.

[[Category:Forks]]