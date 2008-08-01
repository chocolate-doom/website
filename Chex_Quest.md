[[Image:Chexquest.png|thumb|right|320px|Chex Quest playing]]
Since July 31, 2008, Chocolate Doom has had full support for [[doom:Chex Quest|Chex Quest]], including demo compatibility.  The game is from a promotional CD-ROM included in boxes of Chex cereal in 1996.  The IWAD was based on [[doom:Ultimate Doom|Ultimate Doom]], although the executable was based on Final Doom; some concepts in the game were changed to make it more friendly for children (monsters don't leave corpses or ammo behind, the weapons don't resemble projectile weapons...).

Chocolate Doom doesn't have all necessary data included in the engine itself, instead some Chex changes were converted into a [[Dehacked]] patch.  To quote fraggle, the following reasons are why:
* There are potential copyright/trademark issues with putting the Chex strings into Chocolate Doom - Chex Quest was never open sourced.
* Some things would be quite difficult to do in C, like string replacements.  There's already code in Chocolate Doom for doing string replacements as part of the dehacked code.
* Hard-coding things is "ugly".  Using a generic mechanism with a dehacked patch is a lot nicer.
* Using a dehacked patch allows it to be used with other source ports.

To play Chex Quest in Chocolate Doom, you need:
# Obtain a copy of Chex Quest [http://chexmania.tripod.com/downloads.htm here]
# Obtain the Dehacked patch [http://www.soulsphere.org/random/chex.deh here]
# Make sure the deh file is in the '''current''' directory, and run <tt>chocolate-doom -iwad chex.wad</tt>

[[Category:TCs]]
[[Category:Features]]