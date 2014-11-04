[[Image:chocolate-eternal-freedoom.png|thumb|200px|right|Chocolate Doom running [[Eternal Doom]] with Freedoom.]]
'''Freedoom''' is a [[doom:Freedoom|free game project]] that can be used to play Doom without the original proprietary game files.  However, the single player campaigns ("Freedoom: Phase 1 and 2") are not compatible with Chocolate Doom. Instead, it's recommended that you download the '''FreeDM''' multiplayer spinoff project, which is vanilla compatible and works with Chocolate Doom.

Simple instructions:
# Download and extract Chocolate Doom.
# Download and extract FreeDM, and copy the ''freedm.wad'' file into the Chocolate Doom folder.
# Run Chocolate Doom.

However, FreeDM's levels are intended for multiplayer deathmatch which might seem boring if you have nobody to play against (they don't contain any monsters). If you don't like deathmatch, you might instead want to download a single player megaWAD so that you get some more interesting levels to play.

== Doom 2 Megawads ==

The [[doom:idgames archive|idgames archive]] is a good place to find WADs to play with. Not all levels will work with Chocolate Doom - look for levels that are marked as "Vanilla compatible", will run with "Doom 1.9", or "no advanced engine required".

To run a megaWAD, use a command line like the following:

 chocolate-doom -iwad freedm.wad -merge ''mm.wad''

{| {{prettytable}}
|-
!Megawad || idgames link
|-
|[[doom:Alien Vendetta|Alien Vendetta]] || [http://www.doomworld.com/idgames/index.php?id=11790 av.zip]
|-
|[[doom:Eternal Doom|Eternal Doom]] || [http://www.doomworld.com/idgames/index.php?id=8688 eternal.zip]
|-
|[[doom:Icarus: Alien Vanguard|Icarus: Alien Vanguard]] || [http://www.doomworld.com/idgames/index.php?id=5191 icarus.zip]
|-
|[[doom:Memento Mori|Memento Mori]] || [http://www.doomworld.com/idgames/?id=4855 mm.zip]
|-
|[[doom:Memento Mori II|Memento Mori II]] || [http://www.doomworld.com/idgames/?id=6562 mm2.zip]
|-
|[[doom:Requiem|Requiem]] || [http://www.doomworld.com/idgames/index.php?id=8194 requiem.zip]
|-
|[[doom:Revolution!|Revolution!]] || [http://www.doomworld.com/idgames/index.php?id=11848 tvr.zip]
|-
|[[doom:Scythe|Scythe]] || [http://www.doomworld.com/idgames/index.php?id=11944 scythe.zip]
|-
|}

More Doom 2 megawads can be found in the [http://www.doomworld.com/idgames/index.php?dir=levels/doom2/megawads/ levels/doom2/megawads/] directory of the /idgames archive.

=== Final Doom Megawads ===

The megaWADs below were designed for play with Final Doom. You can play these with Freedoom as well, but you'll need to specify the extra ''-pack'' parameter, with the option of ''tnt'' or ''plutonia'' depending on the WAD you're playing. For example:

 chocolate-doom -iwad freedm.wad -pack plutonia -merge ''pl2.wad''

or

 chocolate-doom -iwad freedm.wad -pack tnt -merge ''tnt2.wad''


{| {{prettytable}}
|-
!Megawad || idgames link
|-
|[[doom:Plutonia 2|Plutonia 2]] || [http://www.doomworld.com/idgames/?file=levels/doom2/megawads/pl2.zip pl2.zip]
|-
|[[doom:Plutonia: Revisited Community Project|Plutonia: Revisited Community Project]] || [http://www.doomworld.com/idgames/?file=levels/doom2/Ports/megawads/prcp.zip prcp.zip]
|-
|TNT 2: Devilution || n/a: [http://www.doomworld.com/vb/wads-mods/47721-tnt-2-devilution-texture-pack-in-op/ wip forum link]
|}

== Doom 1 Megawads (for freedoom1.wad) ==

You can also play Doom 1 megaWADs. For these you'll need to download the Freedoom single player campaign and use ''freedoom1.wad'' as the IWAD. For example:

 chocolate-doom -iwad freedoom1.wad -merge dtwid.wad

Note that ''freedoom1.wad'' will not work properly with Chocolate Doom unless you use a megaWAD to replace the levels. The levels in ''freedoom1.wad'' are incompatible with Chocolate Doom and you will probably find that the game will crash.

{| {{prettytable}}
|-
!Megawad || idgames link
|-
|[[doom:2002 A Doom Odyssey|2002: A Doom Odyssey]] || [http://www.doomworld.com/idgames/index.php?id=11657 2002ado.zip]
|-
|[[doom:Base Ganymede|Base Ganymede]] || [http://www.doomworld.com/idgames/index.php?id=16694 bgcomp.zip]
|-
|[[doom:Doom the Way id Did|Doom the Way id Did]] || [http://www.doomworld.com/idgames/index.php?id=16721 dtwid.zip]
|}

More Doom 1 megawads can be found in the [http://www.doomworld.com/idgames/index.php?dir=levels/doom/megawads/ levels/doom/megawads/] directory of the /idgames archive.

== External links ==

* [https://freedoom.github.io/ Freedoom website]
* [http://www.doomworld.com/idgames/ idgames archive]

__NOTOC__