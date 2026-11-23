---
redirect_from:
 - /wiki/index.php/GUS
categories:
 - Features
 - Music
---
{% capture caption %}
Gravis Ultrasound card
{% endcapture %}
{% include Image.md caption=caption image="Gravis_UltraSound_PnP_Pro_V1.0.jpg" width="300" %}

{% include YoutubeEmbed.md id="9xeOX0AaHZk" width="300" height="225" right="1" %}
The Gravis Ultrasound (GUS) was a series of sound cards popular in the \'90s for gaming. While slightly more expensive than the Soundblaster and its clones, the GUS provided superior music playback, with [wavetable synthesis](https://en.wikipedia.org/wiki/Wavetable_synthesis). Doom was one of several games that included GUS playback support.

Chocolate Doom includes a GUS \"pseudo-emulation\" support. An actual GUS is not emulated, but [Timidity](https://en.wikipedia.org/wiki/TiMidity++) is used to play back music using a configuration file generated from the [DMXGUS lump](https://doomwiki.org/wiki/DMXGUS). This means that the music should sound similar to the music played back from an actual GUS card.

Using the GUS feature requires downloading the {% include Idgames.md file="music/dgguspat.zip" title="GUS patch files" %}: these are the samples used to reproduce each MIDI instrument, which were originally distributed with the GUS driver files. Once extracted, the path to the files can be specified in the [setup tool](/Setup.md).

A setup guide for how to configure GUS music playback can be found in the {% include Srclink.md filename="README.Music.md" text="README.Music" %} file included with Chocolate Doom releases.

## Vanilla wrong instruments bug {#vanilla_wrong_instruments_bug}

[Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom) has a [bug](https://doomwiki.org/wiki/GUS_instrument_mappings_bug) where it will play wrong instruments when using a GUS. In keeping with the project [philosophy](/Philosophy.md), Chocolate Doom faithfully emulates this bug, but some people find it sounds unpleasant.

{% include Doomwiki.md page="GUS instrument mappings bug" %}
There are two ways to work around this bug.

### Use gusgonna.wad {#use_gusgonna.wad}

The WAD {% include Idgames.md file="sounds/gusgonna" title="gusgonna.wad" linkonly="1" %} contains a workaround/fix for the bug. Using this WAD does have a disadvantage in that it must be loaded every time the game is run.

### Use GUS patches without GUS emulation {#use_gus_patches_without_gus_emulation}

It is possible instead to play with the GUS patches without using Chocolate Doom\'s GUS emulation. To do this:

1.  Download {% include Idgames.md file="music/dgguspat.zip" title="GUS patch files" %} and unzip.
2.  dgguspat.zip contains the GUS patch files but also includes a file named timidity.cfg - this is the important thing you need.
3.  Open [the setup tool](/Setup.md), go to the [Sound Configuration dialog](/Setup__Sound_configuration.md). Choose \"Native MIDI\" as a music type. Set \"Timidity configuration file\" to point to the timidity.cfg file where you\'ve extracted dgguspat.zip.
