[[Image:Chocolate-aliens-doom.png|thumb|Traditionally, TCs like [[Doom:Alien Doom|Alien Doom]] required modification of the main WAD file]]
[[Doom:Vanilla Doom|Vanilla Doom]] does not support loading modified sprites in [[Doom:PWAD|PWAD]] files.  As a result, most TCs were traditionally distributed in the form of a WAD file which had to be merged with the main [[Doom:IWAD|IWAD]] file.  This was usually done through an included program like "deusf".

Chocolate Doom retains Vanilla Doom's behavior when loading PWADs using the "''-file''" [[Doom:Command line option|command line option]], and will not load sprites correctly.  However, it includes a new option, "''-merge''", which is designed to simulate the action of merging a WAD file into the IWAD.

As an example, to load the WAD needed for Alien Doom:

 chocolate-doom -merge alitcsf.wad -file alitcsnd.wad alitcwad.wad -deh atcud19.deh

[[Category:Features]]