[[Image:Chexquest.png|thumb|right|320px|Chex Quest playing]]
Since July 31, 2008, Chocolate Doom has had full support for '''[[doom:Chex Quest|Chex Quest]]''', including demo compatibility.  The game is from a promotional CD-ROM included in boxes of Chex cereal in 1996.  The [[doom:IWAD|IWAD]] was based on [[doom:Ultimate Doom|Ultimate Doom]], although the executable was based on [[doom:Final Doom|Final Doom]]; some concepts in the game were changed to make it more friendly for children (for example, monsters do not leave corpses or ammo behind and the weapons do not resemble projectile weapons).

Chocolate Doom does not have all necessary data included in the engine itself, instead some Chex changes were converted into a [[Dehacked]] patch.  To quote [[doom:Simon Howard (Fraggle)|fraggle]], the following reasons are why:
* There are potential copyright/trademark issues with putting the Chex strings into Chocolate Doom - Chex Quest was never open sourced.
* Some things would be quite difficult to do in C, like string replacements.  There is already code in Chocolate Doom for doing string replacements as part of the Dehacked code.
* Hard-coding things is "ugly".  Using a generic mechanism with a Dehacked patch is a lot nicer.
* Using a Dehacked patch allows it to be used with other source ports.

To play Chex Quest in Chocolate Doom, you need to:
# Obtain a copy of Chex Quest [http://chexmania.tripod.com/downloads.htm here]
# Obtain the Dehacked patch [http://www.soulsphere.org/random/chex.deh here]
# Put both chex.wad and chex.deh into $DOOMWADDIR (Windows users: the directory with chocolate-doom is suffice)
# Run <tt>chocolate-doom -iwad chex.wad</tt>

[[Category:TCs]]
[[Category:Features]]