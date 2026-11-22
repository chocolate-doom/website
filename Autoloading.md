---
redirect_from:
 - /wiki/index.php/Autoloading
categories:
 - Future_features
---
**Autoloading** allows a set of preferred [WAD](https://doomwiki.org/wiki/WAD) and [Dehacked](https://doomwiki.org/wiki/DeHackEd) files to be loaded every time the game is run. This feature is particularly useful for various [gameplay enhancement mods](/Gameplay_enhancements.md) which subtly improve the base game.

## Configuration

Configuring a file to be autoloaded is a simple matter of copying it to the autoload folder; one is automatically created for each IWAD file. The location depends on the operating system; the following is the location for several operating systems:

macOS
: \[home\]/Library/Application Support/chocolate-doom/autoload/doom.wad

Linux/Unix
: \$HOME/.local/share/chocolate-doom/autoload/doom.wad

Autoload can be temporarily disabled with the `-noautoload` command line argument.
