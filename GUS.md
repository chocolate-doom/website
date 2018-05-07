[[File:Gravis UltraSound PnP Pro V1.0.jpg|300px|thumb|right|Gravis Ultrasound card]]
{{#ev:youtube|9xeOX0AaHZk|300x225|right}}
The Gravis Ultrasound (GUS) was a series of sound cards popular in the '90s for gaming. While slightly more expensive than the Soundblaster and its clones, the GUS provided superior music playback, with [[wikipedia:Wavetable synthesis|wavetable synthesis]]. Doom was one of several games that included GUS playback support.

Chocolate Doom includes a GUS "pseudo-emulation" support. An actual GUS is not emulated, but [[wikipedia:TiMidity++|Timidity]] is used to play back music using a configuration file generated from the [[doom:DMXGUS|DMXGUS lump]]. This means that the music should sound similar to the music played back from an actual GUS card.

Using the GUS feature requires downloading the {{idgames|file=music/dgguspat.zip|title=GUS patch files}}: these are the samples used to reproduce each MIDI instrument, which were originally distributed with the GUS driver files. Once extracted, the path to the files can be specified in the [[setup|setup tool]].

A setup guide for how to configure GUS music playback can be found in the {{srclink|README.Music.md|README.Music}} file included with Chocolate Doom releases.

== Vanilla wrong instruments bug ==

[[doom:Vanilla Doom|Vanilla Doom]] has a [[doom:GUS_instrument_mappings_bug|bug]] where it will play wrong instruments when using a GUS. In keeping with the project [[philosophy]], Chocolate Doom faithfully emulates this bug, but some people find it sounds unpleasant.

{{doomwiki|GUS instrument mappings bug}}
There are two ways to work around this bug.

=== Use gusgonna.wad ===

The WAD {{idgames|file=sounds/gusgonna|title=gusgonna.wad|linkonly=1}} contains a workaround/fix for the bug. Using this WAD does have a disadvantage in that it must be loaded every time the game is run.

=== Use GUS patches without GUS emulation ===
It is possible instead to play with the GUS patches without using Chocolate Doom's GUS emulation. To do this:

# Download {{idgames|file=music/dgguspat.zip|title=GUS patch files}} and unzip.
# dgguspat.zip contains the GUS patch files but also includes a file named timidity.cfg - this is the important thing you need.
# Open [[Setup|the setup tool]], go to the [[Setup/Sound configuration|Sound Configuration dialog]]. Choose "Native MIDI" as a music type. Set "Timidity configuration file" to point to the timidity.cfg file where you've extracted dgguspat.zip.

[[Category:Features]]
[[Category:Music]]