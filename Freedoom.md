[[Image:chocolate-eternal-freedoom.png|thumb|200px|right|Chocolate Doom running [[Eternal Doom]] with Freedoom.]]
'''Freedoom''' is a [[doom:Freedoom|free game project]] that can be used to play Doom without the original proprietary game files.  However, Phase 1+2 requires a Boom-compatible engine to run, while only the FreeDM component of Freedoom is vanilla-compatible.  Because Chocolate Doom is only compatible with [[doom:Vanilla Doom|Vanilla Doom]], Freedoom: Phase 1+2 does not run properly with Chocolate Doom.

However, Chocolate Doom can still be made to run with Freedoom.  The only incompatibility between the two is that the levels distributed with Freedoom do not run.  Because of this, Freedoom will run without problems provided that replacement levels are always loaded.

Simple instructions:
# Download and extract Chocolate Doom.
# Download and extract Freedoom, and copy the ''freedoom2.wad'' file into the Chocolate Doom folder.
# Find a megawad or TC, that replaces all 32 levels of Doom 2 (Map01 - Map32), and load it in the normal way with the ''-file'' parameter.  For example:

 chocolate-doom -iwad freedoom2.wad -file ''filename.wad''

== Suggested Megawads ==

The [[doom:idgames archive|idgames archive]] is a good place to find WADs to play with. Not all levels will work with Chocolate Doom - look for levels that are marked as "Vanilla compatible", will run with "Doom 1.9", or "no advanced engine required".

=== Doom 2 Megawads (for freedoom2.wad) ===

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

=== Final Doom Megawads (for freedoom2.wad) ===

Support for Final Doom in Chocolate Doom is implemented by an internal set of mission packs.  These are normally selected automatically when the IWAD file name is named as ''tnt.wad'' or ''plutonia.wad''.  However, even though Freedoom: Phase 2 supports megawads for both Final Doom games, it defaults to behaving as Doom II, which can make DeHackEd patches not fully work or cause demos to desync.  This can be fixed with the ''-pack'' parameter, which can accept the values ''tnt'' and ''plutonia'', for example:

 chocolate-doom -iwad freedoom2.wad -pack plutonia -file ''filename.wad''

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

=== Doom 1 Megawads (for freedoom1.wad) ===

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