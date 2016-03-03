[[File:Gravis UltraSound PnP Pro V1.0.jpg|250px|thumb|right|Gravis Ultrasound card]]
{{#ev:youtube|9xeOX0AaHZk|250|right}}
The Gravis Ultrasound (GUS) was a series of sound cards popular in the '90s for gaming. While slightly more expensive than the Soundblaster and its clones, the GUS provided superior music playback, with [[wikipedia:Wavetable synthesis|wavetable synthesis]]. Doom was one of several games that included GUS playback support.

Chocolate Doom includes a GUS "pseudo-emulation" support. An actual GUS is not emulated, but [[wikipedia:TiMidity++|Timidity]] is used to play back music using a configuration file generated from the [[doom:DMXGUS|DMXGUS lump]]. This means that the music should sound similar to the music played back from an actual GUS card.

Using the GUS feature requires downloading the {{idgames|file=music/dgguspat.zip|title=GUS patch files}}: these are the samples used to reproduce each MIDI instrument, which were originally distributed with the GUS driver files. Once extracted, the path to the files can be specified in the [[setup|setup tool]].

A setup guide for how to configure GUS music playback can be found in the [https://github.com/chocolate-doom/chocolate-doom/blob/master/README.Music README.Music] file included with Chocolate Doom releases.

[[Category:Features]]
[[Category:Music]]