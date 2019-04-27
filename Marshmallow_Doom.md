[[File:Marshmallows.jpg|thumb|right|The Marshmallow Doom icon]]
{{Doomwiki}}

Marshmallow Doom is a source port which "lightly sweetens" classic Doom gameplay with new additions such as dynamic gameplay-driven music, cooperative bot players, persistent player stats, enhanced blood and gore, treasure items, new difficulty levels, customizable sandbox battles, a much-improved multiplayer experience, and more.

== Synopsis ==

Marshmallow Doom is a fork of the [[Crispy Doom]] source port. Itself being a fork of [[Chocolate Doom]], Crispy Doom adds features such as 640x400 resolution, colored HUD text, removal of static engine limits, translucency, free vertical looking, jumping, and other subtle improvements.  Marshmallow Doom greatly expands on this same ethos of a lightly-sweetened-yet-still classic Doom gameplay experience.

== Features ==

=== The Datapad ===
[[File:datapad.png|thumb|right|The datapad gives the player quick access to many powerful options]]
Most of what Marshmallow Doom has to offer can be accessed on the player's datapad: 

* View player profile showing all-time stats such as frags, accuracy, levels completed, etc.
* Add bots to the game for either cooperative or deathmatch play
* Start a sandbox game to build your own custom battles
* Adjust monster mutators such as '''less HP for lost souls''' or '''changing the speed of revenant missiles'''
* Adjust weapon mutators such as '''particle effects''' for the BFG
* Toggle new item behaviors such as treasure mode or player inventory
* Customize the dynamic music system
* Change game skill level
* Easily skip to any map or skip to a random one

Press ''''M'''' to launch the datapad.  


==== Player Profile ====
[[File:profile.png|thumb|right|The player profile tracks all-time frags, accuracy, treasure score, and more]]
Various metrics are stored in a persistent player profile that is saved to disk.  Stats are '''only saved when a level is completed organically''' without cheating.  Cheating or level skips will cause any stats earnings to be discarded.

A few metrics tracked by the player profile:

* Total kills
* Accuracy
* Levels completed
* Secrets found
* Treasure score

View the profile by selecting '''Profile''' on the datapad.


==== PKE Meter ====
[[File:pkemeter.png|thumb|right|The PKE meter reports a high danger level in E2M8]]
The datapad features a PKE Meter "app" which reports metrics representing potential or immediate danger to the player:

* Nearby monsters are counted and their danger potential is reported numerically as '''Area Risk'''
* Monsters attacking the player are counted separately and this immediate danger is reported numerically as '''Danger'''

Press ''''P'''' to launch the PKE Meter.


==== Help Screen ====

Some of Marshmallow Doom's new features such as bot commands and player inventory have added new keyboard functionality to the game.  Most of these new keyboard controls can be found throughout this document, or you may reference them while in-game using the new keyboard reference screen.

Press ''''H'''' to launch the keyboard reference help screen.


=== Gameplay ===

==== Cooperative Play ====

Doom's vanilla cooperative experience can quickly become frustrating as it is missing many crucial features which are easily taken for granted today.  Multiplayer features from other games like Quake and other Doom source ports have been backported into the classic Doom experience, such as:

* Weapons stay
* Friendly fire and/or mirror damage
* When players are killed, they drop a backpack of ammo as well as their current weapon
* Players can also manually drop a backpack of ammo for another player in need
* Keep any keys collected after player respawns
* Player will respawn with all weapons owned at end of previous map
* Current map can be skipped at any time during a network game
* Deathmatch weapons are not spawned in coop, as to allow for normal singleplayer weapon progression during multiplayer coop games
* Player collision (on/off)


==== Ludicrous Gibs ====

Blood and gore mechanics have been improved to behave similarly to that of Doom's contemporaries such as ''Rise of the Triad'' and ''Duke Nukem 3D''.  Corpses can be destroyed (or "gibbed") when within range of an explosion, or when living actors are killed by an explosion a ''ludicrous'' plume of blood is produced for the player's delight.

This option can be toggled in the '''Gameplay''' menu on the datapad.


==== Monster Upgrades ====

New control points for monster difficulty are offered for a greater challenge, and are especially useful for balancing cooperative play:

===== Upgrade Chance =====

* When using the '''New Game''' menu or the '''Change Map''' menu on the Datapad, the player can set the probability of monster replacement on a scale of 0% to 100%.  It is recommended to upgrade up to 90% as to leave a few un-upgraded monsters for variety.

Upgrading can also be enabled at the command line by using <tt>-upgrade <x></tt>, where ''x'' is probability ranging from 1-9.

===== Hitpoints Scale-Up =====

* Another way to increase monster difficulty is to increase their healthpoints.  This can also be adjusted in the '''Change Map''' menu on the Datapad, or from the command line by using <tt>-scale <x></tt>, where ''x'' is the healthpoints multiplier ranging from 1-9.


==== Monster Mutators ====

Some subtle tweaks to monster behaviors are offered.  A few examples:

* Lost souls spawn with less health
* Revenant missile speed (DOS or PSX speeds)
* Pain Elemental does not spawn lost souls on death
* Archvile painchance lowered
* Limited Archvile targeting scope (Z dimension)
* Cacodemon melee attack sound (on/off)
* Chaingun guy firing sound (shotgun/chaingun)


==== Treasure Items ====

Early plans for Doom included having the player collect treasure items for points much like id's previous hit title, Wolfenstein 3D.  However these old-fashioned game elements such as "points" and "lives" were discarded from the game's design later in development and these treasure items were changed to function as health and armor bonuses.

In Marshmallow Doom's normal treasure mode, treasure is spawned at all multiplayer item spawn points; and in full treasure mode, health and armor bonuses also spawn treasure items.  

Treasure mode can be toggled within the '''Gameplay''' section of the Marshmallow Menu.


==== Inventory ====

If enabled, the following items can be stored in the player's inventory for later use:

* Radsuit
* Invulnerability
* Invisilbility
* Portable medkit
* Infrared goggles

Press ''''V'''' to open the inventory menu.


==== Conserved Item Pickups ====

When the player touches a large health or ammo pickup, '''only the amount needed to reach maximum health or ammo capacity is deducted from the item pickup''', and the item will remain on the ground until it is empty.  This feature is especially useful for multiplayer cooperative games as it allows more than one player to benefit from a single health or ammo pickup.


==== Warp Weapons ====

When using option <tt>-warp</tt> at the command line, the player will spawn with an arsenal of weapons estimated to be those found up to that point in the game, in addition to a small helping of ammo.  

For example: when warping to MAP04, the player will start the level with both a shotgun and chaingun.  When warping to MAP30, the player will start the level with all weapons.

If the player prefers classic pistol starts, starting the game with command line option '''-ps''' will bypass the warp weapons feature.


==== Randomized Item Pickups ====

Any classic Doom map can be revitalized by repopulating it with different item pickups.  Two modes of randomized item pickup replacement are offered:

* Normal: Items are randomized by type, where only weapons are replaced with other weapons, ammo is only replaced with other ammo types, etc.
* Extreme: All items are fully randomized regardless of type

Randomized items can be enabled at the New Game menu, the Change Map menu, or the command line using switches <tt>-ri</tt> and <tt>-rie</tt>.


==== Sandbox Mode ====

Sandbox mode allows the player to design their own monster hordes in an empty map of the player's choice. Fight to the death in both singleplayer or cooperative.  

After starting a sandbox game, scroll through a list of monsters available by pressing the square brackets ''''['''' and '''']'''', and to spawn an enemy, press backslash ''''\''''.  When ready to start the battle, press ''''B'''' on the keyboard.  All monsters placed in sandbox mode will not "wake up" until the battle has been started.  

When using Marshmallow Doom's '''-steal''' command line option, you can '''fight your own hordes of Doom II monsters in Doom maps'''.


==== New Difficulty Levels ====

Two new difficulty levels are offered which also incorporate the monster upgrade feature:

===== Ultra Violence 2.0 =====

* Speed and damage mechanics of Ultra Violence skill level
* Monsters are upgraded by a 60% chance

===== Nightmare 2.0 =====

* Speed and damage mechanics of Nightmare skill level
* Monsters do not respawn
* Monsters are upgraded by a 90% chance
* Cheats enabled in single-player mode


==== New Event Messages ====

New event messages keep the player informed of important events during the game.  The message categories shown to the player can be customized using the HUD menu. A few examples include:

* "An Archvile has spotted you"
* "You killed a teammate"
* "You were killed by an Imp"

Other useful information is available on the HUD such as:

* Reporting the current target's remaining health (all monsters or bosses only)
* Missile-lock alerts (when fighting Cyberdemon)


==== New Items ====

A few of Doom's original item pickups have been repurposed for use by a handful of new items:

* A '''portable medkit''' is added to the player's inventory as part of Doom's berserk/strength powerup
* When using the '''Monsters Drop Goodies''' option, a new health bonus item called the ''Demonsphere'' repurposes the invisibility item sprite; and as to avoid confusion, the actual invisibility powerup is now set to display with the MF_SHADOW flag (will appear partially-invisible)
* The ammo backpack sprite has been repurposed as a "dropped" backpack which spawns when players are killed in multiplayer, allowing the player to retrieve their inventory by returning to their corpse.  Doom's original backpack item remains unchanged and unaffected.
* If treasure mode is enabled, skull keys are repurposed as lucrative treasure items and placed throughout most levels.  Any actual skull keys in the map are automatically converted to standard keys as to avoid confusion.


==== Additional Features ====

Other new gameplay features include:

* Invisibility powerup makes the player truly invisible to monsters and homing missiles
* Bullet max ammo limit has been raised from 200 to 300 (or 600 with backpack)
* Using '''Goodies Mode''', all monsters drop health, ammo, and other items when killed
* Fast monsters option can be toggled while in-game by typing the <tt>FASTMODE</tt> cheat
* Red screen filter when picking up berserk powerup can be shortened or disabled
* Berserk auto-switch to fist is optional
* The BFG can also be selected by pressing ''''0'''' as in Quake II
* Fast single-key melee attack (press ''''~'''')
* Pushing barrels around the map (hold the '''use key''' while walking into a barrel)
* Sprint (hold ''''Q'''') which is intended for platform-running
* Monster respawn in nightmare can be disabled
* Auto-use
* Player suicide


=== Dynamic Music ===

Bobby Prince's original soundtrack from Doom can be brought to life using the new ''Doom DJ'' feature.  Doom DJ varies the mood of the music playing based on the amount of action the player is experiencing in real-time.

'''Music from both Doom and Doom II can be used simultaneously''' while playing either game when using the wad stealing option (see below.)

Commonly overplayed songs such as "Running from Evil", "At Doom's Gate", and intermission songs can be disabled in the '''Song Blacklist''' menu.  When a blacklisted song is chosen, a new song is randomly selected automatically.


=== Bots ===

Up to three AI-controlled bots are available for cooperative or deathmatch play.  Bots can be added at any time while playing a singleplayer game, and when spawned, they will run to meet the player at his current position in the map.  They will primarily follow the player's lead through the level, and if separated will attempt to regroup to the player's position if possible.

Press ''''F'''' to order the bots to follow you.

Press ''''T'''' to assign a target to the bots.

Press ''''~'''' to kick the bots out of the way when blocked.

Press the '''use''' key while facing a bot to cycle through orders/behaviors.

Press and hold ''''Shift'''' to make the bots sprint.  This will also make the bots move in close to the player; useful for crowding into elevators/lifts or moving the bots out of the way when blocked.

TIP:  If the player's path is blocked by the bots, type <tt>MOVE</tt> to order the bots to scatter out of the way. When ready to proceed, press 'F' to order the bots to continue to follow.

TIP:  You can also type <tt>HOLD</tt> to order the bots to hold position.


=== Wad Stealing ===

Wad stealing is a new experimental feature which allows the use of both Doom and Doom II assets (music, sprites, etc.) to be used at once for a richer Doom experience.  The dynamic music and sandbox features make the most use of wad stealing, as music from both games can be used at once and sandbox games in Doom maps can use Doom II monsters.

Wad stealing also allows vanilla Doom maps in singleplayer or coop to be dynamically re-populated with Doom II monsters, adding a fresh new challenge to any classic Doom map.

The super shotgun is also available in Doom, however this is also possible with Crispy Doom.

When the game is first started, the user will be prompted to import the other game's wad file if the IWAD file is detected in the Marshmallow Doom directory.

Wad stealing can also be enabled from the command line:

* <tt>-d1s</tt> sets the IWAD to DOOM.WAD with DOOM2.WAD as a PWAD importing music, monsters, and super shotgun
* <tt>-d2s</tt> sets the IWAD to DOOM2.WAD with DOOM.WAD as a PWAD importing mostly music


=== New Cheat Codes ===

* <tt>ENDMAP</tt> aborts the current level by calling G_ExitLevel()
* <tt>KILLMENOW</tt> triggers a player suicide
* <tt>SKILL</tt> will report the current game skill level
* <tt>FRIENDLYFIRE</tt> toggles friendly fire when using cooperative bots
* <tt>LUDICROUS</tt> toggles option for enhanced blood and gore
* <tt>MOVE</tt> orders all bots to move out of the way when player is blocked
* <tt>HOLD</tt> orders the bots to hold position
* <tt>FASTMODE</tt> toggles fast monsters option during gameplay
* <tt>INSANE</tt> toggles "insane physics" mode


=== Command-line Options ===

* <tt>-d1</tt> or <tt>-doom1</tt> sets IWAD to DOOM.WAD
* <tt>-d2</tt> or <tt>-doom2</tt> sets IWAD to DOOM2.WAD
* <tt>-steal</tt> when added to either -d1 or -d2 will import the opposite game's wad as a PWAD
* <tt>-plut</tt> or <tt>-plutonia</tt> sets IWAD to PLUTONIA.WAD
* <tt>-tnt</tt> sets IWAD to TNT.WAD
* <tt>-rand</tt> warps to a random level
* <tt>-upgrade <x></tt> upgrades monsters based on probability of 1-9 <x>
* <tt>-scale <x></tt> multiplies all enemy healthpoints by value <x>
* <tt>-delayssg <x></tt> delays any appearance of the super shotgun until map <x>
* <tt>-dmw</tt> forces-on spawning of Doom's multiplayer-only item pickups in any game mode
* <tt>-itytd</tt> enables "baby mode" skill level
* <tt>-hntr</tt> enables easy skill level
* <tt>-hmp</tt> enables normal skill level
* <tt>-uv</tt> enables hard skill level
* <tt>-nm</tt> enables Nightmare skill level
* <tt>-nmnr</tt> enables Nightmare skill level with no monster respawn
* <tt>-uv2</tt> enables hard skill with a 90% monster upgrade chance
* <tt>-nm2</tt> enables Nightmare skill with no respawning monsters and a 100% monster upgrade chance
* <tt>-sandbox</tt> launches a new sandbox game
* <tt>-ri</tt> enables normal random items mode
* <tt>-rie</tt> enables extreme random items mode
* <tt>-bots <x></tt> starts a game with <x> number of bot players (up to three)
* <tt>-crt</tt> emulates the darker look of an old CRT monitor from the 1990s
* <tt>-d3l</tt> makes most indoor areas ''very'' dark, emulating the frighteningly dark look of Doom 3

== Inspiration ==

Many of Marshmallow Doom's new features are inspired by other games of the era such as ''Duke Nukem 3D'', ''Quake'', ''Unreal'', and ''Half-Life''.

New features such as treasure, score, achievements, inventory, extended HUD information, and ludicrous gibs are a direct tribute to game designer and founding id member Tom Hall.  Hall's creative influence was largely left out of Doom but Marshmallow Doom aims to recreate what Hall's influence on Doom might have been had he stayed through the end of development.

''Doom DJ'' is inspired by iMuse, the dynamic music system heard in many classic Lucasarts games such as ''X-Wing'', ''Tie Fighter'', and ''Dark Forces''.

== Download ==

Download at http://www.marshmallowdoom.com


Read the FAQ: http://www.marshmallowdoom.com/marshmallow-wp/faq

Source code: https://github.com/drbelljazz/marshmallow-doom