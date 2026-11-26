---
redirect_from:
 - /wiki/index.php/Marshmallow_Doom
 - /wiki/index.php/User:JT_Marshmallow
 - /User:JT_Marshmallow.html
---
{% image filename:Newlogo.jpg %}
The Marshmallow Doom icon
{% endimage %}

{% include Doomwiki.md  %}

Marshmallow Doom is a source port which lightly sweetens classic Doom gameplay with new additions such as dynamic gameplay-driven music, cooperative bot players, persistent player stats, enhanced blood and gore, treasure items, new difficulty levels, customizable sandbox battles, a much-improved multiplayer experience, and more.

## Synopsis

Marshmallow Doom is a fork of the [Crispy Doom](/Crispy_Doom.md) source port. Itself being a fork of [Chocolate Doom](/Chocolate_Doom.md), Crispy Doom adds features such as 640x400 resolution, colored HUD text, removal of static engine limits, translucency, free vertical looking, jumping, and other modern improvements. Marshmallow Doom greatly expands on this same ethos of a lightly-sweetened-yet-still-classic Doom gameplay experience.

## Features

### The Datapad {#the_datapad}

{% image filename:Datapad.png %}
The datapad gives the player quick access to many powerful options
{% endimage %}

Most of what Marshmallow Doom has to offer can be accessed on the player\'s datapad. Some features on the datapad include:

- View the player profile showing all-time stats such as frags, accuracy, levels completed, etc.
- Add bots to the game for either cooperative or deathmatch play
- Monster mutators such as adjusting the speed of revenant missiles
- Weapon mutators such as particle effects for the BFG
- Toggle new item behaviors such as treasure mode or player inventory
- Customize the dynamic music system
- Change game skill level
- Easily skip to any map or skip to a random one

<!-- -->

    Press ''''M'''' to launch the datapad.  

#### Player Profile {#player_profile}

{% image filename:Profile.png %}
The player profile tracks all-time frags, accuracy, treasure score, and more
{% endimage %}

Various player-specific statistics are stored in a persistent player profile that is saved to disk. Stats are *only saved when a level is completed organically without cheating*. Cheating or level skips will cause any stats earnings to be discarded.

A few statistics tracked by the player profile:

- Total kills
- Accuracy
- Levels completed
- Secrets found
- Treasure score

<!-- -->

    View the profile by selecting '''Profile''' on the datapad.

#### PKE Meter {#pke_meter}

{% image filename:Pkemeter.png %}
The PKE meter reports a high danger level in E2M8
{% endimage %}

The datapad features a PKE Meter app which reports both potential and immediate danger:

- Nearby monsters are counted and their danger potential is reported numerically as **Area Risk**
- Monsters attacking the player are counted separately and this immediate danger is reported numerically as **Danger**

Danger level is also reported by the PKE Widget which can be seen in the upper right corner of the screen. Danger is represented as a five star rating, where five stars represents the highest level of danger.

    Press ''''P'''' to launch the PKE Meter.

#### Help Screen {#help_screen}

Some of Marshmallow Doom\'s new features such as bot commands and player inventory have added new keyboard functionality to the game. Most of these new keyboard controls can be found throughout this document, or you may reference them while in-game using the new keyboard reference screen.

    Press ''''H'''' to launch the keyboard reference help screen.

### Gameplay

#### Cooperative Play {#cooperative_play}

Doom\'s vanilla cooperative experience can quickly become frustrating as it is missing many crucial features which are easily taken for granted today. Multiplayer features from other games like Quake and other Doom source ports have been backported into the classic Doom experience, such as:

- Weapons stay
- Friendly fire and/or mirror damage
- When players are killed, they drop a backpack containing their entire inventory which can be retrieved by returning to the corpse after respawning
- Players can also manually drop a backpack of ammo for another player in need
- Keep any keys collected after player respawns
- Player will respawn with all weapons owned at end of previous map
- Current map can be skipped at any time, even during a network game
- Deathmatch weapons are not spawned in coop by default, as to allow for normal single-player weapon progression during multiplayer coop games
- Player collision (on/off)

#### Blood and Gibs {#blood_and_gibs}

Blood and gore mechanics have been redesigned to behave similarly to that of Doom\'s contemporaries such as *Rise of the Triad* and *Duke Nukem 3D*.
Four gore modes are offered:

- **Doom**: Default Doom gore mechanics
- **Ludicrous**: Gore mechanics emulate that of *Rise of the Triad*
- **Groovy**: Gore mechanics emulate that of *Duke Nukem 3D*
- **Brutal**: \'Nuff said!

<!-- -->

    This option can be adjusted in the '''Gameplay''' menu on the datapad.

#### Monster Upgrades {#monster_upgrades}

New control points for monster difficulty are offered for a greater challenge, and are especially useful for balancing cooperative play:

##### Upgrade Chance {#upgrade_chance}

- When using the **New Game** menu or the **Change Map** menu on the Datapad, the player can set the probability of monster replacement on a scale of 0% to 100%. It is recommended to upgrade up to 90% as to leave a few un-upgraded monsters for variety.

Upgrading can also be enabled at the command line by using `-upgrade <x>`, where *x* is probability ranging from 1-9.

##### Hitpoints Scale-Up {#hitpoints_scale_up}

- Another way to increase monster difficulty is to increase their healthpoints. This can also be adjusted in the **Change Map** menu on the Datapad, or from the command line by using `-scale <x>`, where *x* is the healthpoints multiplier ranging from 1-9.

#### Monster Mutators {#monster_mutators}

Some subtle tweaks to monster attributes and behaviors are available. A few examples:

- Lost souls spawn with less health
- Revenant missile speed adjustment (DOS or PSX speeds)
- Pain Elemental does not spawn lost souls on death
- Lowered Archvile painchance
- Limited Archvile targeting scope (Z dimension)
- Cacodemon melee attack sound (on/off)
- Chaingun guy firing sound (shotgun/chaingun)

#### Treasure Items {#treasure_items}

Early design plans for Doom included having the player collect treasure items for points much like id\'s previous hit title, Wolfenstein 3D, but game elements such as *points* and *lives* were ultimately discarded from the game\'s design, leading these treasure items to be converted into what we now know as Doom\'s health and armor bonuses.

Marshmallow Doom seeks to re-introduce a *collecting* element to Doom\'s gameplay, where the player collects colored skulls awarding varying amounts of points.

When using treasure mode, Doom\'s skull key sprites are reused as these new treasure items. Two treasure modes are available:

- **Normal**: Treasure is spawned at all multiplayer item spawn points
- **Full**: Treasure is spawned in place of all health and armor bonuses, in addition to multiplayer item spawn points

<!-- -->

    '''TIP''': The most rare skull to collect is the ''Blood Skull''.  Be sure to check secret areas to find any hidden treasure!

#### Inventory

If the **Saved Items** option is enabled, the following items can be stored in the player\'s inventory for later use:

- Radsuit
- Invulnerability
- Invisilbility
- Portable medkit
- Infrared goggles

<!-- -->

    Press ''''V'''' to open the inventory menu.

#### Backpack Drops {#backpack_drops}

When killed during cooperative play, the player can run back to their corpse to retrieve their saved items, weapons, and ammo. Only the player who dropped the backpack can pick it up, and if the player dies multiple times, multiple backpacks will be available for retrieval at each player corpse.

In real network cooperative games, players can drop ammo for friends by pressing `'G'`. Ammo is deducted from the player dropping the backpack, and when ammo is low enough, dropping a backpack is not possible until more ammo is found.

    '''TIP''': In deathmatch games, a player's inventory is not dropped on death.  Instead, the player's current weapon is dropped along with a small ammo bonus.

#### Conserved Item Pickups {#conserved_item_pickups}

When the player touches a large health or ammo pickup, only the amount needed to reach maximum health or ammo capacity is deducted from the item pickup, and the item will remain on the ground until it is empty. This feature is especially useful for multiplayer cooperative games as it allows more than one player to benefit from a single health or ammo pickup.

#### Warp Weapons {#warp_weapons}

When using option `-warp` at the command line, the player will spawn with an arsenal of weapons estimated to be those found up to that point in the game, in addition to a small helping of ammo.

For example: when warping to MAP04, the player will start the level with both a shotgun and chaingun. When warping to MAP30, the player will start the level with all weapons.

    '''TIP''': Warp weapons can be disabled by editing <tt>marshmallow.cfg</tt> or <tt>server.cfg</tt>.  To disable the option, find the option named GradedWeapons and change '1' to '0'.

#### Randomized Item Pickups {#randomized_item_pickups}

Any classic Doom map can be revitalized by repopulating it with different item pickups. Two modes of randomized item pickup replacement are offered:

- **Normal**: Items are randomized by type, where only weapons are replaced with other weapons, ammo is only replaced with other ammo types, etc.
- **Extreme**: All items are fully randomized regardless of type

<!-- -->

    '''TIP''': Randomized items can be enabled at the New Game menu, the Change Map menu, or the command line using switches '''-ri''' and '''-rie'''.

#### Sandbox Mode {#sandbox_mode}

Sandbox mode allows the player to design their own monster hordes in an empty map. In real network games, all players can place monsters throughout the map.

After starting a sandbox game, scroll through a list of monsters available by pressing the square brackets **\'\[**\' and **\'\]**\', and to spawn an enemy, press backslash **\'\\**\'. When ready to start the battle, press **\'B**\'. All monsters placed in sandbox mode will not become active until the battle begins.

    '''TIP''': When using Marshmallow Doom's WAD stealing feature, you can fight your own hordes of Doom II monsters in Doom maps.

#### New Difficulty Levels {#new_difficulty_levels}

Two new difficulty levels are offered which also incorporate the monster upgrade feature:

##### Ultra Violence 2.0 {#ultra_violence_2.0}

- Speed and damage mechanics of Ultra Violence skill level
- Monsters are upgraded by a 60% chance

##### Nightmare 2.0 {#nightmare_2.0}

- Speed and damage mechanics of Nightmare skill level
- Monsters do not respawn
- Monsters are upgraded by a 90% chance
- Cheats enabled in single-player mode

#### New Event Messages {#new_event_messages}

New event messages keep the player informed of important events during the game. The message categories shown to the player can be customized using the HUD menu. A few examples include:

- \"An Archvile has spotted you\"
- \"You killed a teammate\"
- \"You were killed by an Imp\"

Other useful information is available on the HUD such as:

- Reporting the current target\'s remaining health (all monsters or bosses only)
- Missile-lock alerts (when fighting Cyberdemon)

#### New Items {#new_items}

A few of Doom\'s original item pickups have been repurposed for use by a handful of new items:

- A **portable medkit** is added to the player\'s inventory as part of Doom\'s berserk/strength powerup
- When using the **Monsters Drop Goodies** option, a new health bonus item called the *Demonsphere* repurposes the invisibility item sprite; and as to avoid confusion, the actual invisibility powerup is now set to display with the MF_SHADOW flag (will appear partially-invisible)
- The ammo backpack sprite has been repurposed as a \"dropped\" backpack which spawns when players are killed in multiplayer, allowing the player to retrieve their inventory by returning to their corpse. Doom\'s original backpack item remains unchanged and unaffected.
- If treasure mode is enabled, skull keys are repurposed as lucrative treasure items and placed throughout most levels. Any actual skull keys in the map are automatically converted to standard keys as to avoid confusion.

#### Additional Features {#additional_features}

Other new gameplay features include:

- Invisibility powerup makes the player truly invisible to monsters and homing missiles, introducing a stealth tactic to help the player better survive any Doom level
- Bullet max ammo limit has been raised from 200 to 300 (or 600 with backpack)
- Fast monsters option can be toggled while in-game
- Red screen filter when picking up berserk powerup can be shortened or disabled
- Berserk auto-switch to fist is optional
- The BFG can also be selected by pressing **\'0**\' as in Quake II
- Fast single-key melee attack (press **\'\~**\')
- Sprint (hold **\'Q**\') which is intended for platform-running
- Monster respawn in nightmare can be disabled
- Auto-use
- Pushing barrels
- Player suicide

### Dynamic Music {#dynamic_music}

Bobby Prince\'s original soundtrack from Doom can be brought to life using the new *Doom DJ* feature. Doom DJ varies the mood of the music playing based on the amount of danger the player is experiencing in real-time.

Music from both Doom and Doom II can be used simultaneously while playing either game when using the WAD stealing option (see below.)

The datapad offers a handful of options for tweaking the dynamic music system:

- **Music Mode**: Toggles between Doom\'s default music mode and the new dynamic music system (Vanilla/Marshmallow modes)
- **Song**: Displays the name of the currently playing song. Press enter to skip the current song.
- **Song Length**: Sets the maximum number of tics any song will play
- **Music Changes**: This option controls how abruptly the music will change. When in normal mode, songs will typically play for a set minimum amount of time. When using the abrupt mode, songs will change more rapidly without a minimum play duration.
- **Mood**: Allows the player to force a particular mood playlist such as AMBIENT or INTENSE. By default this setting should be left on DYNAMIC.
- **Game**: Changes the pool of songs available between Doom, Doom II, and both games combined. It is recommended to use the combined mode for the most song variation.
- **Messages**: Enables console messages informing the player of any Doom DJ song/mood changes

<!-- -->

    '''TIP''': Commonly overplayed songs such as "Running from Evil", "At Doom's Gate", and intermission songs can be disabled in the '''Song Blacklist''' menu.  When a blacklisted song is chosen, a new song is randomly selected automatically.

### Bots

Up to three AI-controlled bots are available for cooperative or deathmatch play. Bots can be added at any time while playing a single-player game, and when spawned, they will run to meet the player at his current position in the map. They will primarily follow the player\'s lead through the level, and if separated will attempt to regroup to the player\'s position if possible.

Press **\'F**\' to order the bots to follow you.

Press **\'T**\' to assign a target to the bots.

Press the **use** key while facing a bot to cycle through a single bot\'s orders/behaviors.

Press and hold the **use** key to activate the squad command menu.

    '''TIP''': If the player's path is blocked by the bots, hold the use key to activate the squad command menu, and then press 'P'.  Once unblocked, press 'F' to order the bots to continue to follow.

Press and hold **\'Shift**\' to make the bots sprint. This will also make the bots move in close to the player; useful for crowding into elevators/lifts or moving the bots out of the way when blocked.

    '''TIP''': When playing maps featuring ledge-running or other complicated terrain, try changing bot walk speed to '''Careful'''.  This option can be found in the Bots menu on the datapad. ''(Example map: E5M1)''

### WAD Stealing {#wad_stealing}

Wad stealing allows both Doom and Doom II assets (music, sprites, etc.) to be used at once for a richer Doom experience. The dynamic music and sandbox features make the most use of wad stealing, as music from both games can be used at once and sandbox games in Doom maps can use Doom II monsters.

Wad stealing also allows vanilla Doom maps in single-player or coop to be dynamically repopulated with Doom II monsters, adding a fresh new challenge to any classic Doom map.

The super shotgun is also available in Doom, however this is also possible with Crispy Doom.

When the game is first started, the user will be prompted to import the other game\'s wad file if the IWAD file is detected in the Marshmallow Doom directory.

Wad stealing can also be enabled from the command line:

- `-d1s` sets the IWAD to DOOM.WAD with DOOM2.WAD as a PWAD importing music, monsters, and super shotgun
- `-d2s` sets the IWAD to DOOM2.WAD with DOOM.WAD as a PWAD importing mostly music

### Configuration Files {#configuration_files}

Marshmallow Doom introduces two new configuration files for saving settings: `marshmallow.cfg` and `server.cfg`.

Settings from `server.cfg` are only loaded when playing real network games or when using the `-solo-net` command-line option. The game does not write any changes to server.cfg as this file is only intended to be altered manually using a text editor.

When not playing real network games and not using `-solo-net`, all preferences are saved to `marshmallow.cfg`.

    '''TIP''': ''marshmallow.cfg'' contains some game options that are not available on the in-game menus, such as <tt>DM_KillOnExit</tt>, <tt>DangerousBFG</tt>, and much more.

### New Console Commands {#new_console_commands}

Marshmallow Doom accepts a handful of new console commands that can be typed at any time, like cheat codes. Not all of these new console commands are disabled in real network games, as `ENDMAP` and `KILLMENOW` both work during real network games.

- `ENDMAP` aborts the current level by calling G_ExitLevel()
- `KILLMENOW` triggers a player suicide
- `SKILL` will report the current game skill level
- `FASTMODE` toggles fast monsters option during gameplay
- `FRIENDLYFIRE` toggles friendly fire when using cooperative bots
- `MOVE` orders all bots to move out of the way when player is blocked
- `HOLD` orders the bots to hold position
- `NEXT` skips current song and starts a new song
- `NORESPAWN` disables enemy respawning in nightmare skill
- `IDFLIP` enables the flipped levels feature

### New Randomization Engine {#new_randomization_engine}

Marshmallow Doom takes advantage of an all-new true random number generator. Many features take advantage of this new random number system, such as randomized song selection, randomized map selection, bot behaviors, as well as the particle system which powers any blood and smoke effects.

    '''TIP''': In real network games, Doom's default pseudo-random number system is used as this is required for stable network play.

### Simplified Command-line {#simplified_command_line}

Marshmallow Doom simplifies most common command-line parameters to make launching the game quicker and easier. The following are command-line examples:

     '''marshmallow-doom.exe -d1 -bots -uv'''<br>
     ''('''-d1''' sets IWAD to DOOM.WAD; '''-bots''' adds two bots to the game; '''-uv''' starts the game in Ultra Violence skill level)''

     '''marshmallow-doom.exe -d2s -bot -nm2'''<br>
     ''('''-d2s''' sets IWAD to DOOM2.WAD and steals from DOOM.WAD; '''-bot''' adds one bot to the game; '''-nm2''' starts the game in Nightmare 2.0 skill level)''

     '''marshmallow-doom.exe -sigil -flip -itytd'''<br>
     ''('''-sigil''' sets IWAD to SIGIL.WAD; '''-flip''' enables the flipped levels feature; '''-itytd''' starts the game in I'm Too Young To Die skill level)''

    '''TIP''': When playing real network games, only the host has to specify game options such as skill level or deathmatch flags.  These options are passed down to all clients when the game starts, so each client only needs to specify their IWAD.  Example command-line for server/clients: <br><br>Server: '''marshmallow-doom.exe -d1 -server -nodes 2 -uv2 -dmw'''<br><br>Clients: '''marshmallow-doom.exe -d1 -autojoin'''

### Command-line Options {#command_line_options}

- `-d1` or `-doom1` sets IWAD to DOOM.WAD
- `-sigil` sets IWAD to DOOM.WAD and merges SIGIL.WAD
- `-d2` or `-doom2` sets IWAD to DOOM2.WAD
- `-steal` when added to either -d1 or -d2 will import the opposite game\'s wad as a PWAD
- `-plut` or `-plutonia` sets IWAD to PLUTONIA.WAD
- `-tnt` sets IWAD to TNT.WAD
- `-rand` warps to a random level
- `-upgrade <x>` upgrades monsters based on probability of 1-9 \<x\>
- `-scale <x>` multiplies all enemy healthpoints by value \<x\>
- `-delayssg <x>` delays any appearance of the super shotgun until map \<x\>
- `-dmw` forces-on spawning of Doom\'s multiplayer-only item pickups in any game mode
- `-dmm` enables monsters in deathmatch
- `-itytd` enables \"baby mode\" skill level
- `-hntr` enables easy skill level
- `-hmp` enables normal skill level
- `-uv` enables hard skill level
- `-nm` enables Nightmare skill level
- `-nmnr` enables Nightmare skill level with no monster respawn
- `-uv2` enables hard skill with a 90% monster upgrade chance
- `-nm2` enables Nightmare skill with no respawning monsters and a 100% monster upgrade chance
- `-sandbox` launches a new sandbox game
- `-ri` enables normal random items mode
- `-rie` enables extreme random items mode
- `-bots <x>` starts a game with \<x\> number of bot players (up to three)
- `-flip` enables the flipped levels feature

## Inspiration

*Doom DJ* is inspired by iMuse, the dynamic music system heard in many classic Lucasarts games such as *X-Wing*, *Tie Fighter*, and *Dark Forces*.

Usage of the phrase \"ludicrous gibs\" is a tribute to Apogee Software\'s *Rise of the Triad* and their infamous Developers of Incredible Power.

Old-fashioned game elements such as collecting treasure, scoring, and player inventory are part of an attempt to recreate what Tom Hall\'s influence on Doom might have been had he stayed through the end of development.

## Download

Download at <http://nanotechstudios.com/doom/>

Read the FAQ: <http://nanotechstudios.com/doom/faq>

ModDB page: <https://www.moddb.com/mods/marshmallow-doom>
