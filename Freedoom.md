[[Image:chocolate-eternal-freedoom.png|thumb|320px|right|Chocolate Doom running [[Eternal Doom]] with Freedoom.]]
{{Doomwiki}}
'''Freedoom''' is a [[doom:Freedoom|free game project]] that can be used to play Doom without the original proprietary game files.  However, the single player campaigns ("Freedoom: Phase 1 and 2") are not yet compatible with Chocolate Doom ([https://www.doomworld.com/forum/topic/85134-freedoom-10-will-be-vanilla-compatible/ version 1.0 of Freedoom should be fully vanilla-compatible], but until then, read the rest of this page). Instead, it's recommended that you download the '''FreeDM''' multiplayer spinoff project, which is vanilla compatible and works with Chocolate Doom.

Simple instructions:
# [[Downloads|Download]] and extract Chocolate Doom.
# [https://freedoom.github.io/download.html Download] and extract FreeDM ('''not''' "Freedoom Phase 1+2"), and move ''freedm.wad'' file into the same folder as Chocolate Doom.
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
|[[doom:Alien Vendetta|Alien Vendetta]] || {{idgames|file=levels/doom2/megawads/av.zip|title=av.zip}}
|-
|[[doom:Eternal Doom|Eternal Doom]] || {{idgames|file=themes/TeamTNT/eternal/eternal.zip|title=eternal.zip}}
|-
|[[doom:Icarus: Alien Vanguard|Icarus: Alien Vanguard]] || {{idgames|file=themes/TeamTNT/icarus/icarus.zip|title=icarus.zip}}
|-
|[[doom:Memento Mori|Memento Mori]] || {{idgames|file=themes/mm/mm_allup.zip|title=mm_allup.zip}}
|-
|[[doom:Memento Mori II|Memento Mori II]] || {{idgames|file=themes/mm/mm2.zip|title=mm2.zip}}
|-
|[[doom:Requiem|Requiem]] || {{idgames|file=levels/doom2/megawads/requiem.zip|title=requiem.zip}}
|-
|[[doom:Revolution!|Revolution!]] || {{idgames|file=levels/doom2/megawads/tvr.zip|title=tvr.zip}}
|-
|[[doom:Scythe|Scythe]] || {{idgames|file=levels/doom2/megawads/scythe.zip|title=scythe.zip}}
|-
|}

More Doom 2 megawads can be found in the [https://www.doomworld.com/idgames/index.php?dir=levels/doom2/megawads/ levels/doom2/megawads/] directory of the /idgames archive.

== Doom 1 Megawads (for freedoom1.wad) ==

You can also play Doom 1 megaWADs. For these you'll need to download the Freedoom single player campaign and use ''freedoom1.wad'' as the IWAD. For example:

 chocolate-doom -iwad freedoom1.wad -merge dtwid.wad

Note that ''freedoom1.wad'' will not work properly with Chocolate Doom unless you use a megaWAD to replace the levels. The levels in ''freedoom1.wad'' are incompatible with Chocolate Doom and you will probably find that the game will crash if you try to play them.

{| {{prettytable}}
|-
!Megawad || idgames link
|-
|[[doom:2002 A Doom Odyssey|2002: A Doom Odyssey]] || {{idgames|file=levels/doom/Ports/megawads/2002ado.zip|title=2002ado.zip}}
|-
|[[doom:Base Ganymede|Base Ganymede]] || {{idgames|file=levels/doom/megawads/bgcomp.zip|title=bgcomp.zip}}
|-
|[[doom:Doom the Way id Did|Doom the Way id Did]] || {{idgames|file=levels/doom/megawads/dtwid.zip|title=dtwid.zip}}
|}

More Doom 1 megawads can be found in the [https://www.doomworld.com/idgames/index.php?dir=levels/doom/megawads/ levels/doom/megawads/] directory of the /idgames archive.

== External links ==

* [https://freedoom.github.io/ Freedoom website]
* [http://freedoom.soulsphere.org/ Freedoom autobuilds]
* [https://www.doomworld.com/idgames/ idgames archive]
* [https://www.doomworld.com/forum/17-freedoom/ The Freedoom forum hosted on Doomworld]

__NOTOC__