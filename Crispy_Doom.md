[[File:Crispy-doom.png|thumb|right|The Crispy Doom icon]]
Crispy Doom is a limit-raising medium-resolution Doom source port based on [[Chocolate Doom]].
Its name means that 640x400 looks "crisp" and is also a slight [http://www.mathsisfun.com/recipie.html reference] to its origin.

== Objectives ==
Crispy Doom is a fork of [[Chocolate Doom]] that provides a higher display resolution, raises the [[doom:Static_limits|static limits]] of the Doom engine and offers further optional visual, technical and gameplay-affecting enhancements while remaining entirely config file, savegame, netplay and demo [[#Compatibility|compatibile]] with the original.

== Changes of Crispy Doom 1.5 from Crispy Doom 1.4 ==
Crispy Doom 1.5 "Supernova" has been released on August 18, 2014.

=== Gameplay ===
* Automap improvements:
** Exit lines are now drawn in white.
** Corpses are now shown as gray rectangles when the <tt>IDDT</tt> cheat is active.
** The disappearance of map and grid lines when zooming far out in huge maps has been fixed.

* A new, unique <tt>SPECHITS</tt> cheat has been added that triggers (by either using, shooting or crossing) all special lines available in the map '''at once''' -- including lines that require a key to get activated but excluding teleporters and level exits. ''While this cheat may appear completely pointless at first, it has proven useful for debugging purposes and allows map designers to "just see what happens if...". Be warned, however, that using this cheat may leave the map in a completely inconsistent state and may cause several overflows and unpredictable behaviour. Furthermore, please note that doors which can be activated from both sides will not move at all, because they will be opened by one <tt>linedef</tt> and closed again by the other one in the same gametic.''
* The <tt>ID[K]FA</tt> cheats now give the backpack to the player.

* Optional weapon recoil has been added for all weapons except the fist and the chainsaw, using the recoil thrust values found in MBF and PrBoom+. This feature has to get enabled in ''crispy-doom-setup'', it is disabled by default and only generally available in regular single player games.
* The extra quit messages ('''containing profanity!''') found in the source code have been enabled and are now shown with the same propability as the original messages.
* The weapon sprite now gets centered upon firing.
* When the "Quick Load" button (<tt>F9</tt>) is pressed before the game has been saved via "Quick Save" (<tt>F6</tt>), the regular "Load Game" menu is now shown and the selected slot is taken as the "Quick Save" slot. Also, the "Quick Save" slot is now cleared once the game is ended via "End Game" in the "Options" menu.

* If the player exits a map with the Berserker fist active and is equiped with the chaisaw, he will start the next map with the chainsaw instead of the normal fist. This feature is only available in regular single player games.
* The "power up" sound is now played (but only audible to the <tt>consoleplayer</tt>) each time the Berserker fist is selected.

=== Technical ===
* Compatibility improvements:
** The default amount of RAM that is allocated for the game has been doubled to <tt>32 MB</tt>, the minimal amount has been quadrupled to <tt>16 MB</tt>. 
** The "Medusa" effect from multi-patch textures has been fixed by lazily replacing (and slightly adapting) <tt>R_DrawColumnInCache()</tt>, <tt>R_GenerateComposite()</tt> and <tt>R_GenerateLookup()</tt> in <tt>src/doom/r_data.c</tt> with Lee Killough's implementations from MBF.
** The "Tutti Frutti" effect from short textures has been fixed by (again lazily) replacing <tt>R_DrawColumn()</tt> in <tt>src/doom/r_draw.c</tt> with Lee Killough's implementation from MBF. ''However, this fix has not yet been applied to the other column drawing functions, namely <tt>R_Draw{Fuzz,Translated,TL}Column[Low]()</tt>.''
** The <tt>MAXVISSPRITES</tt>, <tt>MAXVISPLANES</tt> and <tt>MAXDRAWSEGS</tt> limits have been entirely removed (''i.e. the formerly static arrays now get resized dynamically''), using no Boom-derived code at all. ''However, for performance reasons (mostly sprite ordering in <tt>R_SortVisSprites()</tt>), the <tt>MAXVISSPRITES</tt> limit is currently capped at 4096 (i.e. <tt>32 x</tt> Vanilla <tt>MAXVISSPRITES</tt> limit).''
** The <tt>MAXSEGS</tt> limit has been raised from <tt>32</tt> to <tt>(SCREENWIDTH/2+1)</tt>, i.e. the same value found in MBF.
** The <tt>BLOCKMAP</tt> limit has been removed, using code from PrBoom+.
** Support for extended nodes has been implemented, again using code from PrBoom+.
** The <tt>MAX_ADJOINING_SECTORS</tt> limit (''formerly up to <tt>20</tt> adjoining sectors'') has been removed, while keeping the one overflow (''i.e. if <tt>h == 21</tt>'') that could possibly get emulated intact -- based on code adapted from PrBoom+.
** The Vanilla savegame and demo limits are now unconditionally disabled.
** When entering an unknown special sector, the game will not crash with an error message anymore but merely print a warning.
** The file size limit (<tt>96 kB</tt>) for MID files inside PWADs has been disabled.
** Common mapping errors (''e.g. missing <tt>sidedefs</tt>'') are now fixed upon loading the maps, using code adapted from PrBoom+.
** A [http://doomwiki.org/wiki/Hall_of_mirrors_effect HOM] is fixed if both <tt>ceilingplane</tt> and <tt>floorplane</tt> are the same visplane (e.g. both are skies).
** An integer overflow in <tt>SlopeDiv()</tt> has been fixed that formerly lead to an open subsector and thus a giant slime trail in <tt>nuts.wad</tt>.
: All of the above changes make it possible to properly play (and save, and exit, and record and playback demos in) ''Fraken''maps like e.g. <tt>nuts.wad</tt>, <tt>arcadia.wad</tt> and all of <tt>NOVA.wad</tt> -- gosh, what broken mess. :p

* Enemy targets and tracers are now preserved when saving and loading a game. ''This is achieved by enumerating all thinker pointers upon saving a game and storing the corresponding indices in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields instead of the actual pointers. When loading a game, after all the thinkers have been restored, the reverse process is applied and all indices in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields are replaced by the corresponding current pointers again. This process is completely Vanilla compatible, as Vanilla will ignore the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields anyway and overwrite them with <tt>NULL</tt> when loading a game. Otherwise, when loading a game saved in Vanilla, the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields will not match any of the indices expected by Crispy Doom and will thus get overwritten with <tt>NULL</tt>, just as in Vanilla.''
* Games saved in a map with an active cube spitter will not cause a crash anymore when loaded again. ''When awakened, the cube spitter counts the number of spawn spots and saves them in the <tt>numbraintargets</tt> variable. However, in Vanilla its value is not recalculated when loading a game. This has been fixed by calling <tt>A_BrainAwake()</tt> again if <tt>numbraintargets == 0</tt>.''

* Mouse look improvements:
** Vertical mouse movement has been vastly smoothened by adjusting the scale instead of the mouse delta. ''In the former implementation the vertical mouse delta was scaled down by <tt>1/8</tt>, i.e. the lower three bits were discarded. So by moving the mouse really slowly, it was possible to not change <tt>lookdir</tt> at all when the delta on every tic was less than <tt>8</tt>. This has been fixed by moving the division into the rendering and slope calculations and scaling all the constants up by factor 8.'' Thanks to clarry of the doomworld forum for this highly appreciated patch!
** Centering the view with the mouse button assigned to mouse look is now more lenient. Any click with that button that is shorter than <tt>6 tics</tt> will now center the view.
** The view is now smoothly centered after teleporting.
** ''The <tt>yslope[i]</tt> array is not recalculated anymore in <tt>R_SetupFrame()</tt> for each frame when <tt>lookdir</tt> changes; instead a lookup table is calculated once in <tt>R_ExecuteSetViewSize</tt>.''

* All PWADs given as arguments to the "<tt>-file</tt>" parameter will now get merged as if they were passed to the "<tt>-merge</tt>" parameter.
* It is now possible to scroll through the menus with the same mouse buttons that are assigned for changing to the previous/next weapon -- which are usually mouse wheel down/up, respectively.
* If the "Run" key is pressed while the game window is closed (e.g. by clicking on the <tt>X</tt> button in the upper right corner) or during confirmation of the quit message, the game now exits instantly (in addition to the feature introduced in Crispy Doom 1.4).
* The background now slowly fades out when a menu is activated or the game is paused.

=== Additional bug fixes ===
* The <tt>tranmap.dat</tt> file will not get saved in the root directory on Windows systems anymore, instead it will now get saved in the same directory as e.g. <tt>crispy-doom.cfg</tt>. ''This was caused by an extra leading path separator in the <tt>tranmap.dat</tt> file name string.'' Thanks to plums of the doomworld forums for the bug report.
* Visual glitches with transparent sprites caused by palette changes have now been fixed. ''The cached translucency map in the <tt>tranmap.dat</tt> file is checked for palette changes at startup. However, in the original code derived from MBF, only the first <tt>256</tt> bytes of the palette were compared, whereas the base palette in the <tt>PLAYPAL</tt> lump has <tt>768</tt> bytes. So, changes in later palette indices went completely unnoticed.''
* The state of the "always run" toggle (introduced in Crispy Doom 1.3) after loading and saving a game has been fixed. ''Enabling "always run" makes the <tt>joybspeed</tt> variable greater than the size of the array which holds the button states, which caused an out-of-bounds read in the part of the expression that determines whether <tt>speed</tt> should be <tt>true</tt>.'' Thanks to clarry of the doomworld forums for the bug report and the patch!
* If things are stuck together vertically because of moving sectors, they are now allowed to move further apart. The fix for this bug has been taken from Doom Retro.

== Changes of Crispy Doom 1.4 from Crispy Doom 1.3==
Crispy Doom 1.4 has been released on June 12, 2014.

=== Gameplay ===
* Players are now allowed to walk over or underneath shootable objects, i.e. monsters and barrels. This needs to be explicitely enabled in ''crispy-doom-setup'', but is disabled by default and generally only available in single-player games.
: Some restrictions still apply to this feature:
:# Only the player can walk over or underneath other objects, monsters can not. This prevents multiple monsters from piling up and avoids the need for more complicated measures in the code that would potentially break compatibility.
:# It is only allowed to walk over or underneath shootable objects. Most other objects in Doom have arbitrary heights hard-coded into the engine which do not necessarily match the actual appereance in the game.
:# Melee attacks across differences heights are entirely unaffected by this feature.
* Automap improvements: 
** Keyed doors are now drawn in their respective colors.
** Thus, in order to distinguish red-keyed doors from regular walls (which were formerly drawn in red) and yellow-keyed doors from walls with ceiling level changes (which were formerly drawn in yellow), these are now drawn in darker red and yellow colors, respectively.
** Furthermore, teleporters (which were formerly drawn in just that darker red color) are now drawn in green. Additionally, WR teleporters (''linedef type #97'') are now also drawn in green if they are not secret.
** When the <tt>IDDT</tt> cheats are active:
*** Secret sector boundaries are now drawn in purple until they are revealed (''i.e. as long as <tt>sector->special == 9</tt>'').
*** Keys are now shown as crosses in their respective colors.
*** The triangle size now represents the actual thing size.
*** Countable kills are now shown as red and countable items as yellow triangles.
** Episode and Map are now explicitely shown in the automap if the map title string has been modified by means of dehacked.
* HUD improvements:
** When either the God Mode cheat or the Invincibility powerup are active, Health and Armor values on the status bar are now printed in gray.
** When the fist is selected and the Berserk Pack is active, its sprite is now drawn into the previously empty Ammo field in the Crispy HUD.

=== Technical ===
* Gun flash sprites are now rendered translucent.
* Holding down the "Run" key while taking a screen shot now takes the picture without the weapon sprite or any other HUD elements.
* Holding down the "Run" key while choosing "Quit Game" now exits instantly. This actually turns <tt>Shift+F10</tt> into an emergency "Boss Key". ;)
* The presence of MAP33 is not hard-coded to the <tt>doom2.wad</tt> IWAD file of the BFG Edition anymore. Instead, it is now checked at startup and the level progression (i.e. ''MAP02-(secret exit)->MAP33->MAP03'') is adapted accordingly.
* Once a savegame has been rejected to continue from after player death (by holding down the "Run" key during resurrection, feature introduced in Crispy Doom 1.3) it is not considered anymore until loaded or saved again.
* The <tt>IDCLEVxy</tt> cheat now eats key presses, i.e. the second digit of the level number is not interpreted as a weapon selection anymore.
* When using the <tt>-warp</tt> command line parameter for Doom 1, the episode and map numbers do not have to be separated by spaces anymore.
* The flashing HOM indicator (introduced in Crispy Doom 1.3) has been turned into a command line option <tt>-flashinghom</tt> and now flashes even when the <tt>NOCLIP</tt> cheat is active. Without this option, though, HOMs are still drawn in black but do not flash in red anymore.

== Changes of Crispy Doom 1.3 from Crispy Doom 1.2 ==
Crispy Doom 1.3 has been released on May 19, 2014.

* Crispy Doom now has its own icon! It is is composed of the [http://www.chocolate-doom.org/wiki/index.php/File:Chocolate-logo.png Chocolate Doom icon] and a [https://en.wikipedia.org/wiki/File:Potato-Chips.jpg photo] of potato crisps (Utz-brand, grandma's kettle-cooked style) by [https://commons.wikimedia.org/wiki/User:Evan-Amos Evan-Amos] who kindly released it into the [https://en.wikipedia.org/wiki/Public_domain public domain].

=== New features ===
* A "quick reverse" key has been added.
* A key to toggle "always run" has been added, set to <tt>Caps Lock</tt> by default.
* Keys have been added to "go to the next level" and to "reload the current level", but left unset by default (based on code taken from PrBoom+).
* Support to invert the mouse on the vertical axis has been added.
* It is now possible to toggle between Fist and Chainsaw even without the Berserk pack applied, not available in demo recording/playback and netgame mode.
* Boom's <tt>TNTEM</tt> and <tt>TNTWEAPx</tt> cheats as well as PrBoom+'s/ZDoom's <tt>NOTARGET</tt> cheat have been implemented.
* The Automap is now updated while playing.
* The Automap markers are now centerd on the map. 
* Vertical aiming (introduced in Crispy Doom 1.2) is now optional, since it may have some severe undesired effects on gameplay. It can be enabled in ''crispy-doom-setup'', but is disabled by default and in demo recording/playback and netgame mode.
* The corpse flipping randomization (introduced in Crispy Doom 1.2) has been improved by improving corpse health randomization. ''The flipping decision is based on the monster health after death. However, since some weapons do only apply damage in multiples of (multiples of) 2, the distribution was uneven. In Crispy Doom 1.3, moster health is now reduced by <tt>target->tics & 1</tt>, which itself is randomized by <tt>target->tics -= P_Random()&3</tt> before. Thus, a more even distribution is achived across all weapons and monster types.'' Furthermore, the Barrel has been added as an exception that should not have its death animation flipped (thanks Doom Retro).
* The lethal pellet of a point-blank SSG blast may now get an additional damage boost to achieve an occasional gib chance, disabled in demo recording/playback and netgame mode. ''This only happens if the target is within melee range (i.e. if <tt>P_CheckMeleeRange(target)</tt> returns <tt>true</tt>) and if <tt>damage >= 10</tt> for the lethal pellet, which roughly corresponds to a 2/3 chance.''
* If the player dies and the game has been loaded or saved before in the current level, that savegame is now reloaded instead of restarting the entire level from scratch. However, since this behaviour may be undesired, it is possible to suppress it by holding the "Run" key during resurrection.
* The player view is now centered when the player dies or hits hard ground (the latter only when mouse look is disabled).
* Existing demo files with the same file name are now saved from getting overwritten by adding a file name suffix. That is, if you run e.g. <tt>crispy-doom -record demo</tt> and a file called <tt>demo.lmp</tt> does already exist, Crispy Doom will now save the new demo as <tt>demo-000.lmp</tt>, or <tt>demo-001.lmp</tt> if that does also exist, etc.
* Entering menus while recording demos will now pause the game to prevent [http://doomwiki.org/wiki/Demo_desyncing_caused_by_menu_access instant desyncing].
* A [http://doomwiki.org/wiki/HOM HOM indicator] has been added that flashes between black and red (but remains black if the ''noclip'' cheat is active).
* Chocolate Doom 2.0.0 clients are now allowed to connect to Crispy Doom servers.

=== Experimental features ===
* The "flipped levels" feature has been ported over (i.e. "stolen") from Strawberry Doom. To try this out, add the <tt>-fliplevels</tt> parameter to the command line.
* The SSG is now also available in Doom 1 if the required resources are made available. To try this out, run the game via e.g. <tt>crispy-doom -iwad doom.wad -merge doom2.wad doom.wad</tt> and type <tt>IDKFA</tt> or <tt>TNTWEAP9</tt>.

=== Other bug fixes ===
* The tutti-frutti effect which appeared around the weapon sprite under certain circumstances has been fixed.
* A crash has been fixed when an Automap marker reaches the border of the map.
* A bug that made the status bar and the face visible under certain circumstances when using the ''noclip'' cheat has been fixed.

=== Non-Doom Ports ===
* Due to popular demand, the non-Doom games that are part of Chocolate Doom have now been added back into the release. However, they have not seen any development since the Crispy Doom 1.0 release and are strictly '''unsupported'''. Feature requests are accepted if accompanied by patches. ;-)

== Changes of Crispy Doom 1.2 from Crispy Doom 1.1 ==
Crispy Doom 1.2 has been released on April 10, 2014.
It is mostly a bug fix release to fix the jerky mouse look in Crispy Doom 1.1. If you were unsatisfied with the mouse look performance of Crispy Doom 1.1 it is highly recommended to upgrade to Crispy Doom 1.2:

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
Crispy Doom 1.1 has been released on April 5, 2014.
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
Crispy Doom 1.0 has been released on March 10, 2014.
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

* The "flipped levels" and "SSG available in Doom 1" features introduced in Crispy Doom 1.3 are considered strictly '''experimental'''! They may produce savegames, demo files or netgames that are not compatible with Chocolate Doom, Vanilla Doom or previous versions of Crispy Doom at all.

* The <tt>SPECHITS</tt> cheat introduced in Crispy Doom 1.5 may leave a map in a completely inconsistent state and games saved after using it may even cause Vanilla to crash by exceeding static limits.

* Games saved with Crispy Doom 1.5 or later are still '''compatible with Vanilla Doom''', but are '''not identical''' anymore to the files that Vanilla Doom would have saved. This is caused by the fact that Crispy Doom preserves the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields when saving a game by replacing their contents with specific indices. These indices are then converted back into the corresponding pointers in Crispy Doom when the game is loaded again. In Vanilla Doom, however, the contents of the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields are disregarded and get overwritten with <tt>NULL</tt> when loading the game. Games saved in Vanilla Doom, on the other hand, still contain pointers in the <tt>mobj->target</tt> and <tt>mobj->tracers</tt> fields, but these will not match any of the indices expected by Crispy Doom and will thus get overwritten with <tt>NULL</tt> as in Vanilla Doom.

* Furthermore, the position of the weapon sprite is stored in savegames. While this is always centered when firing in Crispy Doom 1.5, its position actually varies in Vanilla Doom.

== Versioning ==
Crispy Doom 1.0 is based on Chocolate Doom 2.0.0 with merged changes from the GIT master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/ecf457ddcbf481b451f37474b057a06e7d843b66 <tt>ecf457ddcb</tt>].
Crispy Doom 1.1 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/a80aa343a53c3dd3db2434a52d70de72ec4df955 <tt>a80aa343a5</tt>].
Crispy Doom 1.2 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/a1b066a0eb0d2cf5d17ad68ca833fcdd21f80725 <tt>a1b066a0eb</tt>].
Crispy Doom 1.3 and Crispy Doom 1.4 both have merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/e0331a01741905ac665adce1da0fb04e86db4b05 <tt>e0331a0174</tt>].
Crispy Doom 1.5 has merged all changes to the Chocolate Doom master branch up to commit [https://github.com/chocolate-doom/chocolate-doom/commit/97f1de66497c1071ac138e0c63152267b9d2978f <tt>97f1de6649</tt>].

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
http://www.greffrath.com/~fabian/crispy-doom_1.5.zip

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