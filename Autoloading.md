{{Future feature}}
'''Autoloading''' allows a set of preferred [[doom:WAD|WAD]] and [[doom:DeHackEd|Dehacked]] files to be loaded every time the game is run. This feature is particularly useful for various [[gameplay enhancements|gameplay enhancement mods]] which subtly improve the base game.

== Configuration == 

Configuring a file to be autoloaded is a simple matter of copying it to the autoload folder; one is automatically created for each IWAD file. The location depends on the operating system; the following is the location for several operating systems:

; macOS: [home]/Library/Application Support/chocolate-doom/autoload/doom.wad
; Linux/Unix: $HOME/.local/share/chocolate-doom/autoload/doom.wad
<!-- ; Windows: "X:\Users\$USERNAME\...? -->

Autoload can be temporarily disabled with the <tt>-noautoload</tt> command line argument.