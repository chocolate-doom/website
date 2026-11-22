---
redirect_from:
 - /wiki/index.php/Savegame_compatibility
categories:
 - Features
---
{% include Doomwiki.md p1="Save game" %}
Since version 0.1.3, Chocolate Doom has featured full **savegame compatibility** with [Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom). Old DOS savegames will now load in Chocolate Doom. Chocolate Doom itself saves to the Vanilla Doom savegame format, so Chocolate Doom savegames can be loaded in Vanilla Doom.

The new savegame code is implemented in a way which is architecture-independent, so it is (theoretically) even possible to load DOS savegames on [big-endian](https://en.wikipedia.org/wiki/endianness) and [64-bit](https://en.wikipedia.org/wiki/64-bit) machines.
