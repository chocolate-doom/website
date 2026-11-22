---
redirect_from:
 - /wiki/index.php/Compatibility
categories:
 - Features
---
Chocolate Doom is based directly on the original Linux Doom source code released by id. As such, it can claim better compatibility with [Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom) than any other port. Chocolate Doom aims to be as compatible with Doom 1.9 as possible.

This compatibility includes:

- Playback of v1.9 demos
- Loading of v1.9 savegames
- Using the v1.9 configuration file (extra options appear in a separate configuration file).
- Compatibility with v1.9 bugs (including VPO, etc)
- [Dehacked](/Dehacked.md) mod compatibility

## Game version differences {#game_version_differences}

Different versions of [Doom 1.9](https://doomwiki.org/wiki/Doom_1.9) exist. Chocolate Doom attempts to emulate all of these versions. The \"-gameversion\" command line parameter allows the version to emulate to be specified on the command line. For example:

chocolate-doom -gameversion 1.9
: Emulates Doom 1.9, used for Shareware and Registered Doom, and Doom II

chocolate-doom -gameversion ultimate
: Emulates the Ultimate Doom executable

chocolate-doom -gameversion final
: Emulates the Final Doom executable.

If no parameter is specified, an appropriate game version is selected based on the IWAD file being used.
