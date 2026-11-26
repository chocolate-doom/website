---
redirect_from:
 - /wiki/index.php/Setup/Compatibility
 - /setup-compat
categories:
 - Setup_tool
---
{% image filename:Compatibility.png width:300 %}
{% endimage %}

The **Compatibility** window allows a couple toggles on very strict emulation of the limits of the original games:

*Vanilla savegame limit* determines whether the [savegame size is limited](https://doomwiki.org/wiki/Save_game_buffer_overflow) or not. In the original game, the limit is around 180KB and may be exceeded with very large levels. If the limit is enabled, the game may crash when attempting to save a game.

*Vanilla demo limit* determines whether the [demo](https://doomwiki.org/wiki/Demo) size is limited. Like savegames, demos were [limited in size](https://doomwiki.org/wiki/Static_limits#Demo_length) in the original, to 128KB (around 15 minutes of solo play). Although the size may be increased per recording using the  `-maxdemo`  parameter in the [command line](/Command_line_arguments.md#Demo_options), the limit may still be reached on extremely long play-throughs (such as a full max run in a megawad) and likewise may be desirable to disable to avoid a crash while recording. This toggle does not affect playback of demos of any size.

Most players will probably want to disable both of these limits.
