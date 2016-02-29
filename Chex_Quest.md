[[Image:Chexquest.png|thumb|right|320px|Chex Quest playing]]
Chocolate Doom has full support for '''[[doom:Chex Quest|Chex Quest]]''', including demo compatibility.  The game is from a promotional CD-ROM included in boxes of Chex cereal in 1996.  Although based on Doom, some concepts in the game were changed to make it more friendly for children. For example, the weapons do not kill the monsters; instead, they "send them to a parallel dimension".

To play Chex Quest in Chocolate Doom, follow these steps:

# Obtain a copy of Chex Quest (it can be downloaded [http://chexmania.tripod.com/downloads.htm here]).
# Download the {{idgames|file=utils/exe_edit/patches/chexdeh.zip|title=dehacked patch}}.
# Put both chex.wad and chex.deh into a directory together.
# Run <tt>chocolate-doom -iwad chex.wad</tt>

=== Technical information ===

Chocolate Doom does not have all necessary data included in the engine itself to emulate the original chex.exe.  Instead, as many as possible of the Chex-specific changes are stored in a separate dehacked patch.  This is for the following reasons:

* There are potential copyright/trademark issues with putting the Chex strings into Chocolate Doom - Chex Quest was never open sourced.
* Some things would be quite difficult to do in C, like string replacements.  The dehacked code already includes the ability to do string replacements.
* Hard-coding things is "ugly".  Using a generic mechanism with a Dehacked patch is a lot nicer.
* Using a Dehacked patch allows it to be used with other source ports.

[[Category:TCs]]
[[Category:Features]]