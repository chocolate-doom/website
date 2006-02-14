[[Image:Chocolate-aliens-doom.png|thumb|Traditionally, TCs like [[Doom:Aliens TC |Aliens TC]] required modification of the main WAD file]]
[[Doom:Vanilla Doom|Vanilla Doom]] does not support loading modified sprites in [[Doom:PWAD|PWAD]] files.  As a result, most TCs were traditionally distributed in the form of a WAD file which had to be merged with the main [[Doom:IWAD|IWAD]] file.  This was usually done through an included program like "deusf" or "nwt".

Chocolate Doom retains Vanilla Doom's behavior when loading PWADs using the "''-file''" [[Doom:Command line option|command line option]], and will not load sprites correctly.  However, it includes new command line options which simulate the action of merging a WAD file into the IWAD.  Different options are provided to simulate the behavior of different tools.

=== DeuSF-style ===

The majority of sprite and flat mods use the ''DeuSF'' program.  Merging of this type is simulated using the ''-merge'' command line option.

As an example, to load the WAD needed for [[Aliens TC]]:

 chocolate-doom '''-merge alitcsf.wad''' -file alitcsnd.wad alitcwad.wad -deh atcud19.deh

=== NWT-style ===

Some mods (such as [[Mordeth]]) use ''[[Doom:NWT|NWT]]''.  In this case, there are three command line options:

; -af <file> : Merges flats from the given PWAD
; -as <file> : Merges sprites from the given PWAD
; -aa <file> : Merges all flats and sprites from the given PWAD.

[[Category:Features]]