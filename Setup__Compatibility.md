[[File:Compatibility.png|thumb|right|300px]]
The '''Compatibility''' window allows a couple toggles on very strict emulation of the limits of the original games:

''Vanilla savegame limit'' determines whether the [[Doom:Save game buffer overflow|savegame size is limited]] or not. In the original game, the limit is around 180KB and may be exceeded with very large levels. If the limit is enabled, the game may crash when attempting to save a game.

''Vanilla demo limit'' determines whether the [[Doom:Demo|demo]] size is limited. Like savegames, demos were [[Doom:Static limits#Demo length|limited in size]] in the original, to 128KB (around 15 minutes of solo play).  Although the size may be increased per recording using the&nbsp; <tt>-maxdemo</tt>&nbsp; parameter in the [[Command line arguments#Demo options|command line]], the limit may still be reached on extremely long play-throughs (such as a full max run in a megawad) and likewise may be desirable to disable to avoid a crash while recording. This toggle does not affect playback of demos of any size.

Most players will probably want to disable both of these limits.

[[Category:Setup tool]]