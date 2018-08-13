[[File:Marshmallows.jpg|thumb|right|The Marshmallow Doom icon]]
{{Doomwiki}}

Marshmallow Doom is a gameplay-oriented source port that sweetens the classic Doom experience with additional features such as cooperative bot players, dynamic gameplay-driven music, enhanced blood and gore, a much-improved network game experience, persistent player stats, treasure items, customizable sandbox battles, and more.  


== Synopsis ==

Marshmallow Doom is a fork of the wonderful [[Crispy Doom]] source port. Itself being a fork of [[Chocolate Doom]], Crispy Doom adds features such as 640x400 resolution, colored HUD text, removal of static engine limits, translucency, free vertical looking, jumping, and other subtle improvements.  Marshmallow Doom greatly expands on this same ethos of a "lightly sweetened" yet still classic Doom gameplay experience.


== Features ==

=== The Datapad ===

Most of what Marshmallow Doom has to offer can be accessed on the player's datapad.  Show the datapad by pressing ''''M'''' on the keyboard.

The datapad allows the player to:

* View player profile showing all-time stats such as frags, accuracy, etc.
* Add bots to the game for either cooperative or deathmatch play
* Adjust tweaks to monster stats/behaviors such as '''less HP for lost souls''' or '''slowing the velocity of revenant missiles'''
* Adjust tweaks to weapon stats/behaviors such as '''infinite pistol ammo''' or enabling pseudo-particle effects for explosions
* Toggle new item behaviors such as treasure mode, inventory, or monster bonuses
* Change game skill level during the game
* Change maps easily in the menu, including randomized map selection
* Customize the dynamic music system
* Start a sandbox game in an empty map of the player's choice


=== Gameplay ===

New options for monster behaviors include:

* Lost souls spawn with less health
* Revenant missile speed (DOS or PSX speeds)
* Pain Elemental does not spawn lost souls on death
* Archvile painchance lowered
* Limited Archvile targeting scope (Z dimension)
* Cacodemon melee attack sound (on/off)
* Chaingun Guy firing sound (shotgun/chaingun)


New multiplayer options include:

* Weapons stay
* Friendly fire and/or mirror damage
* Multiplayer weapon/item pickups are not spawned in co-op (by default, but can be enabled)
* When players are killed, they drop a backpack of ammo as well as their current weapon
* Players can also manually drop a backpack of ammo for another player in need
* Keep any keys collected after player respawns
* Player will respawn with all weapons owned at end of previous map
* Current map can be skipped at any time during a network game


==== Inventory ====

Press ''''V'''' on the keyboard to open the inventory menu.


The following items can be stored in the player's inventory for use at any time during gameplay:

* Radsuit
* Invulnerability
* Invisilbility
* Portable medkit
* Infrared goggles


==== New Items ====

A few of Doom's original item pickups have been repurposed for use by a handful of new items:

* A '''portable medkit''' is added to the player's inventory as part of Doom's berserk/strength powerup
* A new health bonus item called the '''Demonsphere''' repurposes the invisibility item sprite; and as to avoid confusion, the actual invisibility powerup is now set to display with the MF_SHADOW flag (a.k.a. it will appear partially-invisible)
* The ammo backpack sprite has been repurposed as a "dropped" backpack which spawns when players are killed during cooperative play, awarding a small helping of ammo when found.  Doom's original backpack item remains unchanged and unaffected
* If treasure mode is enabled, skull keys are repurposed as lucrative treasure items and placed throughout most levels.  (Any actual skull keys in the map are automatically converted to standard keys as to avoid confusion.)


==== Treasure Items ====

id Software's original vision for Doom included allowing the player to collect treasure items for points, akin to their previous title Wolfenstein 3D.  However these old-fashioned game elements such as  "points" and "lives" were discarded from the game's design later in development and these treasure items were permanently changed to function as health and armor bonuses.

For those gamers who miss the days of collecting treasure for points, Marshmallow Doom offers '''treasure mode'''.  In normal treasure mode, any multiplayer item spawn points in singleplayer or cooperative modes will spawn treasure items, and in full treasure mode, health and armor bonuses are also converted to treasure items.  Treasure mode can be toggled within the '''Gameplay''' section of the Marshmallow Menu or from the command line using switches '''-tr''' or '''-trb'''.


==== Monster Bonuses ====

All monsters now drop a bonus item when killed:

* Imp, Cacodemon, Lost Soul, Demon, and Spectre drop a health bonus
* Arachnatron and Mancubus drop a cell pack
* Revenant drops a rocket
* Baron of Hell, Hell Knight, Arch-vile, and Pain Elemental drop a Demonsphere health bonus
* Cyberdemon and Spider Mastermind drop a megasphere or soulsphere


==== Conserved Item Pickups ====

When the player touches a large health or ammo pickup, '''only the amount needed to reach maximum health or ammo capacity is deducted from the item pickup''', and the item will remain on the ground until it is empty.  This feature is especially useful for multiplayer cooperative games as it allows more than one player to benefit from a single health or ammo pickup.


==== Warp Weapons ====

When using option <tt>-warp</tt> at the command line, the player will spawn with an arsenal of weapons estimated to be those found up to that point in the game, in addition to a small helping of ammo.  

For example: when warping to MAP04, the player will start the level with both a shotgun and chaingun.  When warping to MAP30, the player will start the level with all weapons.


If the player prefers vanilla pistol starts, starting the game with command line option '''-ps''' will bypass the warp weapons feature.


==== Sandbox Mode ====

Sandbox mode allows the player to design their own monster hordes in an empty map of the player's choice. Fight to the death in both singleplayer or cooperative.  

After starting a sandbox game, scroll through a list of monsters available by pressing the square brackets ''''['''' and '''']'''', and to spawn an enemy, press backslash ''''\''''.  When ready to start the battle, press ''''B'''' on the keyboard.  All monsters placed in sandbox mode will not "wake up" until the battle has been started.  


When using Marshmallow Doom's '''-steal''' command line option, you can '''fight your own hordes of Doom II monsters in Doom maps'''.


==== Nightmare 2.0 ====

A new difficulty level is offered as a "remix" of Nightmare skill:

* Monsters do not respawn (by default, but can be changed)
* All monster healthpoints are increased; ideal for cooperative play
* Cheats enabled (single-player only)


==== New event messages ====

New event messages keep the player informed of important events during the game.  The message categories shown to the player can be customized using the HUD menu. A few examples include:

* "An Archvile has spotted you"
* "You killed a teammate"
* "You were killed by an Imp"

Other information available includes:

* Reporting the current target's remaining health (all monsters or bosses only)
* Missile-lock alerts (when fighting Cyberdemon)


==== Additional features ====

Additional new gameplay features include:

* Fast single-key melee attack (press ''''~'''')
* Pushing barrels around the map (hold the '''use key''' while walking into a barrel)
* Sprint (hold ''''Q'''')
* Monster respawn in nightmare can be disabled
* Player suicide
* Auto-use



=== Technology ===



==== Dynamic Music ====

Marshmallow Doom's new dynamic music system, ''Doom DJ'', varies the "mood" of the music playing based on the amount of action the player is experiencing in real-time.

'''Music from both Doom and Doom II can be used simultaneously''' while playing either game.  Command line option '''-steal''' will automatically import assets from the other game's WAD file if the file is present.


==== Bots ====

Up to three AI-controlled bots are available for cooperative or deathmatch play.  Bots can be added at any time while playing a single-player game, and when spawned, they will run to meet the player at his current position in the map.  They will primarily follow the player's lead through the level, and if separated will attempt to regroup to the player's position if possible.

When a bot is in sight, press ''''F'''' on the keyboard to order him to follow you.


==== Danger Indexing ====

The amount of danger facing the player at any given time is tracked in real-time.  In the upper-right of the screen, a color-coded "danger rating" is displayed.  These metrics also play a key role in driving the dynamic music system.


=== New cheat codes ===

* <tt>ENDMAPNOW</tt> aborts the current level by calling G_ExitLevel()
* <tt>KILLMENOW</tt> triggers a player suicide
* <tt>SKILL</tt> will report the current game skill level


=== New command line parameters ===

* <tt>-bots <x></tt> starts a game with <x> number of bot players
* <tt>-steal</tt> allows you to use music and monsters from both Doom and Doom II simultaneously
* <tt>-d2e</tt> spawns some Doom II monsters in Doom maps 
* <tt>-ssg</tt> spawns the super shotgun in Doom maps
* <tt>-ekg</tt> mode for extra blood and explosion effects
* <tt>-dj</tt> starts the game with dynamic music (Doom DJ) enabled
* <tt>-tr</tt> enables normal treasure mode 
* <tt>-trb</tt> enables full treasure mode 
* <tt>-rand</tt> warps to a random level
* <tt>-sandbox</tt> launches a sandbox game
* <tt>-scale <x></tt> multiplies all enemy healthpoints by value <x>
* <tt>-delayssg <x></tt> delays any appearance of the super shotgun until map <x>
* <tt>-ps</tt> forces a pistol start when using <tt>-warp</tt>
* <tt>-itemrespawn</tt> forces items to respawn in any game mode
* <tt>-dmw</tt> forces-on spawning of Doom's multiplayer-only item pickups in any game mode
* <tt>-ff</tt> toggles friendly fire
* <tt>-mirror</tt> toggles mirror damage
* <tt>-self</tt> toggles self-damage
* <tt>-itytd</tt> enables "baby mode" skill level
* <tt>-hntr</tt> enables easy skill level
* <tt>-hmp</tt> enables normal skill level
* <tt>-uv</tt> enables hard skill level
* <tt>-nm</tt> enables Nightmare skill level
* <tt>-nmnr</tt> enables Nightmare skill level with no monster respawn
* <tt>-nm2</tt> enables the new Nightmare 2.0 skill level
* <tt>-d1</tt> or <tt>-doom1</tt> sets IWAD to DOOM.WAD
* <tt>-d2</tt> or <tt>-doom2</tt> sets IWAD to DOOM2.WAD
* <tt>-plut</tt> or <tt>-plutonia</tt> sets IWAD to PLUTONIA.WAD
* <tt>-tnt</tt> sets IWAD to TNT.WAD

== Inspiration ==

Marshmallow Doom builds on the shoulders of the [[Chocolate Doom]] and [[Crispy Doom]] projects, continuing to enhance and improve Doom all while preserving the essence of the original game.  Many of Marshmallow Doom's new features are inspired by other games of the era such as Duke Nukem 3D, Hexen, and Quake.

The new ''Doom DJ'' feature is inspired by ''iMuse'', the dynamic music system heard in many classic Lucasarts games such as X-Wing, Dark Forces, and Monkey Island 2.


== Download ==

Download the beta at www.marshmallowdoom.com [http://www.marshmallowdoom.com].


Source code now available on github:  https://github.com/drbelljazz/marshmallow-doom