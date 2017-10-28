[[File:Marshmallows.jpg|thumb|right|The Marshmallow Doom icon]]
{{Doomwiki}}

Marshmallow Doom is a gameplay-oriented source port which infuses a classic Doom experience with many sweet new features such as multiplayer bots, dynamic gameplay-driven music, treasure items, player inventory, and many more.

== Synopsis ==

Marshmallow Doom is a fork of the wonderful [[Crispy Doom]] source port which provides many beautiful new enhancements such as 640x400 resolution, colored HUD text, removal of static engine limits, translucency, free vertical looking, jumping, and more.  

Marshmallow Doom is unlike most source ports in that it '''does not make any changes to system-oriented code''' (renderer, sound, networking, etc.) but also '''does not add any new assets''' (sprites, sounds, music, etc.) to the game.  All of the game's "new" features are simply an internal reorganization/reporposing of Doom's existing functionality and assets.

== Objectives and features ==

Most of Marshmallow Doom's new features can be easily switched on/off as to allow the player to design their own unique Doom experience.  Most options are available in a new in-game HUD menu, and other features such as multiplayer options are switchable via the command line.

=== Multiplayer features ===

The first goal for the Marshmallow Doom project was to improve Doom's multiplayer experience; particularly co-op play.  New multiplayer options include:

* Friendly fire can be disabled
* Mirror damage can be enforced to deter friendly fire
* Weapons stay in co-op
* Multiplayer weapon/item pickups are not spawned in co-op by default, but can be forced with command line option '''-dmw''' (short for "deathmatch weapons")
* When players are killed, they drop a backpack of ammo as well as their current weapon at time of death
* Players can also manually drop a backpack of ammo for a friend in need, deducting from their own ammo supply
* Keep any keys collected after you die/respawn
* Player will respawn with all weapons owned at end of previous map
* Current map can be skipped at any time during netgame

=== Bots ===

Up to three AI-controlled bots are available for a single-player co-op experience.  Bots can be added at any time while playing a singleplayer or solo-net game.  Once the bots are spawned, they will run to meet you at your current position in the map.  They will engage enemies, open doors, hit switches, etc.  The bots do not use any weapon/item pickups, so each bot's weapon can be set by the player in the new HUD menu.

=== Dynamic Music ===

The intensity of the music playing will follow the amount of action the player is experiencing in real-time.  This feature is inspired by Lucasarts' original dynamic music system known as ''iMuse''.  Marshmallow Doom's new dynamic music system is named ''Doom DJ'' and can be customized via the new HUD menu.

Music from either (or both) Doom and Doom II can be used interchangably while playing either game.  As long as the other game's IWAD file is in your Marshmallow Doom directory, just use the command line parameter '''-steal''' and the other game's music will be automatically imported.

=== Inventory ===

The player can now carry a radsuit, invulnerability, invisilbility, and [portable medkit] for later use.  Pressing 'v' on the keyboard will open your inventory.

=== New/Repurposed Items ===

A few of Doom's item pickups have been repurposed and/or changed:

* A '''portable medkit''' is added to your inventory as part of the berserk/strength powerup
* A new health bonus pickup called the '''Demonsphere''' repurposes the invisibility item sprite; and as to avoid confusion, the actual invisibility powerup is now set to display with the MF_SHADOW flag (a.k.a. it will appear partially-invisible)
* The ammo backpack sprite has been repurposed as a "dropped" backpack when players are killed.  The original backpack item pickup remains unchanged, but backpacks dropped by players will award a small helping of ammo
* Skull keys are optionally repurposed as bonus treasure items and found throughout most levels when playing in treasure mode

=== Treasure Items ===

The original vision for Doom included having the player collect treasure items as in their previous title, Wolfenstein 3D.  However, later in Doom's development these treasure items were changed to health and armor bonuse, as the old-fashioned ideas of "points" and "lives" were discarded from the game's design.

For gamers who might miss the days of collecting treasure for points, Marshmallow Doom offers the option for '''treasure mode'''.  In normal treasure mode, the multiplayer item spawn points are converted to treasure items.  In full treasure mode however, all health and armor bonuses are also converted to treasure items.  

Colored skull keys have been repurposed as our treasure items, therefore any actual skull keys are converted to standard keys as to avoid confusion.

=== Nightmare 2.0 ===

A new difficulty level is offered:

* Monsters do not respawn (by default, but can be changed)
* All monster healthpoints are increased, especially useful for being an added challenge to Doom's co-op play
* Cheats enabled (single-player only)

=== More features ===

Other new features include:

* Fast single-key melee attack (press '~')
* Pushing barrels around the map 
* Sprint (primarily for platform-running)
* Change game skill level while in-game
* Player suicide
* Change maps easily using the new HUD menu
* Auto-use
* Monster respawn in nightmare is optional

=== New event messages ===

=== New cheat codes ===

* <tt>ENDMAPNOW</tt> aborts the current level by calling G_ExitLevel()
* <tt>KILLMENOW</tt> triggers a player suicide
* <tt>SKILL</tt> Will report the current game skill level

=== New command line parameters ===

* <tt>-dj</tt> will start the game with dynamic music enabled
* <tt>-tr</tt> enables normal treasure mode
* <tt>-trb</tt> enables full treasure mode, replacing all health and armor bonuses with treasure
* <tt>-dmw</tt> forces-on the multiplayer-only item spawns which are now off by default in co-op play
* <tt>-scale <x></tt> will multiply all enemy healthpoints by value <x>