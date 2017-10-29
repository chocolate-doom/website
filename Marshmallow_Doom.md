[[File:Marshmallows.jpg|thumb|right|The Marshmallow Doom icon]]
{{Doomwiki}}

Marshmallow Doom is a gameplay-oriented source port which infuses a classic Doom experience with many sweet new features such as multiplayer bots, dynamic gameplay-driven music, treasure items, player inventory, and more.

== Synopsis ==

Marshmallow Doom is a fork of the wonderful [[Crispy Doom]] source port which provides many beautiful new enhancements such as 640x400 resolution, colored HUD text, removal of static engine limits, translucency, free vertical looking, jumping, and more.  

Marshmallow Doom is unlike most source ports in that it '''does not make any changes to system-oriented code''' (renderer, sound, networking, etc.) but also '''does not add any new assets''' (sprites, sounds, music, etc.) to the game.  All of the game's "new" features are simply an internal reorganization and/or reporposing of Doom's existing functionality and assets.


== Objectives and features ==

Most of Marshmallow Doom's options are easily accessible during gameplay via a simple HUD menu, and other features such as multiplayer options are switchable via the command line.  Many of Marshmallow Doom's features are enabled by default but can also be turned off, allowing the player to customize their own balance between vanilla and enhanced gameplay. 

=== HUD menu ===

Launch the in-game menu by pressing ''''m'''' on the keyboard.  To scroll, press the square brackets ''''['''' and '''']'''' and to select pressbackslash ''''\''''.

The '''Marshmallow Menu''' is designed to give you quick and easy access to most of the game's features.  No more digging through pages-and-pages of options deep within Doom's main menu.

=== Gameplay ===

Marshmallow Doom provides several improvements to Doom's multiplayer co-op experience. New multiplayer options include:

* Friendly fire can be disabled, and/or mirror damage can be enforced to deter friendly fire
* Weapons stay in co-op
* Multiplayer weapon/item pickups are not spawned in co-op (by default, but can be changed)
* When players are killed, they drop a backpack of ammo as well as their current weapon at time of death
* Players can also manually drop a backpack of ammo for a friend in need, deducting from their own ammo supply
* Keep any keys collected after you die/respawn
* Player will respawn with all weapons owned at end of previous map
* Current map can be skipped at any time during a netgame


==== Inventory ====

Press ''''v'''' on the keyboard to open the inventory menu.

The player can now carry a radsuit, invulnerability, invisilbility, as well as a new '''portable medkit''' for later use.


==== New Items ====

A few of Doom's original item pickups have been repurposed for use by a handful of new items:

* A '''portable medkit''' is added to the player's inventory as part of Doom's berserk/strength powerup
* A new health bonus item called the '''Demonsphere''' repurposes the invisibility item sprite; and as to avoid confusion, the actual invisibility powerup is now set to display with the MF_SHADOW flag (a.k.a. it will appear partially-invisible)
* The ammo backpack sprite has been repurposed as a "dropped" backpack when players are killed.  The original backpack item pickup remains unchanged, but backpacks dropped by players will award a small helping of ammo
* Skull keys are optionally repurposed as bonus treasure items and found throughout most levels when playing in [treasure] mode


==== Treasure Items ====

The original vision for Doom included having the player collect treasure items as in their previous title, Wolfenstein 3D.  However, later in Doom's development these treasure items were changed to health and armor bonuse, as the old-fashioned ideas of "points" and "lives" were discarded from the game's design.

For those gamers who miss the days of collecting treasure for points, Marshmallow Doom offers '''treasure mode'''.  In normal treasure mode, the multiplayer item spawn points are converted to treasure items for use in any game mode ''except'' deathmatch, and in full treasure mode, health and armor bonuses are also converted to treasure items.  Treasure mode can be toggled within the '''Gameplay''' section of the Marshmallow Menu or from the command line using switches '''-tr''' or '''-trb'''.

''Marshmallow Doom's treasure items are actually a repurposing of Doom's colored skull keys.  Any actual skull keys are automatically converted to standard keys as to avoid confusion.''


==== Monster Bonuses ====

All monsters now drop a bonus item when killed.  (For example: Arachnatrons drop a cell pack, Cyberdemons drop a megasphere, and others drop a new health powerup called the '''Demonsphere'''.)


==== Conserved Item Pickups ====

When the player touches a large health or ammo pickup, '''only the amount needed to reach maximum ammo or health capacity is deducted from the item''' pickup.  The item remains on the ground until it is empty.  This feature is particularly useful during co-op games.


==== Sandbox Mode ====

Sandbox mode allows the player to design their own monster hordes in an empty map of your choice. Fight to the death in either singleplayer or co-op.

When using Marshmallow Doom's '''-steal''' command line option, you can '''fight your own hordes of Doom II monsters in Doom maps'''.


==== Nightmare 2.0 ====

A new difficulty level is offered:

* Monsters do not respawn (by default, but can be changed)
* All monster healthpoints are increased; ideal for co-op play
* Cheats enabled (single-player only)


==== New event messages ====

Many new event messages will keep the player informed of important events during a game.  The types of messages shown can be customized using the HUD menu. A few examples of these messages include:

* "An Archvile has spotted you"
* "You killed a teammate"
* "You were killed by an Imp"

Other information available includes:

* Reporting the current target's remaining health
* Missile-lock alerts


==== More features ====

Other new features include:

* Fast single-key melee attack (press ''''~'''')
* Pushing barrels around the map (hold the '''use key''' while walking into a barrel)
* Sprint (press ''''q'''')
* Change game skill level during game
* Player suicide
* Change maps easily using the HUD menu
* Auto-use
* Monster respawn in nightmare is optional



=== Technology ===


==== Dynamic Music ====

The intensity of the music playing will follow the amount of action the player is experiencing in real-time.  This feature is inspired by ''iMuse'', the dynamic music system found in many classic Lucasarts games.  

Marshmallow Doom's new dynamic music system is named ''Doom DJ'' and can be customized via the HUD menu.  Music from either (or both) Doom and Doom II can be used interchangably while playing either game.  As long as the other game's IWAD file is in your Marshmallow Doom directory, just use the command line parameter '''-steal''' and the other game's music will be automatically imported.


==== Bots ====

Up to three AI-controlled bots are available for a single-player co-op experience.  Bots can be added at any time while playing a singleplayer or solo-net game.  Once the bots are spawned, they will run to meet you at your current position in the map.  They will engage enemies, open doors, hit switches, etc.  The bots do not use any weapon/item pickups, so each bot's weapon can be set by the player in the HUD menu.


==== Danger Indexing ====

The amount of danger facing the player at any given time is tracked in real-time.  In the upper-right of the screen, a color-coded "danger rating" is displayed.  These metrics also play a key role in driving the dynamic music system.



== New cheat codes ==

* <tt>ENDMAPNOW</tt> aborts the current level by calling G_ExitLevel()
* <tt>KILLMENOW</tt> triggers a player suicide
* <tt>SKILL</tt> will report the current game skill level


== New command line parameters ==

* <tt>-dj</tt> starts the game with dynamic music enabled
* <tt>-scale <x></tt> multiplies all enemy healthpoints by value <x>
* <tt>-steal</tt> allows use of Doom's music in Doom II as well as Doom II monsters in Doom
* <tt>-rand</tt> warps to a random level
* <tt>-sandbox</tt> launches a sandbox game
* <tt>-tr <x></tt> enables normal treasure mode <x>
* <tt>-trb <x></tt> enables full treasure mode <x>
* <tt>-bots <x></tt> starts a game with <x> number of bot players
* <tt>-delayssg <x></tt> delays any appearance of the super shotgun until map <x>
* <tt>-ps</tt> forces a pistol start when using -warp
* <tt>-itemrespawn <x></tt> forces items to respawn in all game modes <x>

* <tt>-ff <x></tt> toggles friendly fire <x>
* <tt>-mirror <x></tt> toggles mirror damage <x>
* <tt>-self <x></tt> toggles self-damage <x>

* <tt>-itytd <x></tt> enables "baby mode" skill level<x>
* <tt>-hntr <x></tt> enables easy skill level <x>
* <tt>-hmp <x></tt> enables normal skill level <x>
* <tt>-uv <x></tt> enables hard skill level <x>
* <tt>-nm <x></tt> enables Nightmare skill level <x>
* <tt>-nmnr <x></tt> enables Nightmare skill level with no monster respawn <x>
* <tt>-nm2 <x></tt> enables the new Nightmare 2.0 skill level <x>