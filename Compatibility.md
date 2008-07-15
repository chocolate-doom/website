Chocolate Doom is based directly on the original Linux Doom source code released by id.  As such, it can claim better compatibility with [[doom:Vanilla Doom|Vanilla Doom]] than any other port.  Chocolate Doom aims to be as compatible with Doom 1.9 as possible.

== Game version differences ==

Different versions of [[doom:Doom 1.9|Doom 1.9]] exist.  Chocolate Doom attempts to emulate all of these versions.  The "-gameversion" command line parameter allows the version to emulate to be specified on the command line. For example:

; chocolate-doom -gameversion 1.9 : Emulates Doom 1.9, used for Shareware and Registered Doom, and Doom II
; chocolate-doom -gameversion ultimate : Emulates the Ultimate Doom executable
; chocolate-doom -gameversion final : Emulates the Final Doom executable.

If no parameter is specified, an appropriate game version is selected based on the IWAD file being used.

[[Category: Features]]