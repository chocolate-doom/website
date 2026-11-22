---
redirect_from:
 - /wiki/index.php/OPL_MIDI
 - /wiki/index.php/OPL_emulation
 - /OPL_emulation.html
categories:
 - Features
 - Music
---
{% capture caption %}
Yamaha YM3812 (OPL2) synthesizer chip
{% endcapture %}
{% include Image.md caption=caption image="Yamaha_YM3812.jpg" %}

{% include Doomwiki.md p1="OPL emulation" %}
Chocolate Doom includes OPL MIDI playback support. This plays the in-game MIDI music in the same way as [Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom) sounds when using a SoundBlaster card.

## Overview

In the early \'90s, most sound cards used designs based on the [SoundBlaster](https://en.wikipedia.org/wiki/SoundBlaster). The SoundBlaster was backwards-compatible with an earlier sound card, the [AdLib](https://en.wikipedia.org/wiki/Ad_Lib,_Inc.) card. The AdLib included an FM synthesis chip, the [Yamaha YM3812](https://en.wikipedia.org/wiki/Yamaha_YM3812) also known as the *OPL2*. Later cards used the successor, the [Yamaha YMF262](https://en.wikipedia.org/wiki/Yamaha_YMF262) (*OPL3*), which is backwards compatible with the OPL2.

Because of the popularity of the SoundBlaster and its clones, this was the most common playback method for MIDI music when playing Doom. However, although this chip was once a universal feature of almost all sound cards, modern sound cards do not include it. Modern CPUs are fast enough that much higher quality MIDI playback can be generated in software using wavetable synthesis software (such as Timidity).

Most Doom source ports play back MIDI music using MIDI interfaces provided by the OS. This typically results in much higher quality music than what Vanilla Doom generated; however, to long-time Doom players, it means that the music never sounds quite \"right\".

## Enabling OPL MIDI {#enabling_opl_midi}

OPL MIDI playback can be enabled from the [setup tool](/Setup.md): go to the \"Configure sound\" menu, select the \"Music playback\" dropdown and choose \"OPL (Adlib/SB)\".

## Hardware OPL {#hardware_opl}

As modern PCs do not include an OPL chip, Chocolate Doom includes code that emulates an OPL chip in software to achieve the same effect. However, this may not sound exactly right; there are some MIDI tracks and instruments that will sound wrong. Acute listeners may notice subtle differences between the emulated OPL playback and playback with a \"real\" hardware OPL chip.

Some sound cards do retain hardware OPL support. Chocolate Doom can use these cards to play OPL music in hardware. Hardware playback is supported on Linux, Windows (9x and NT), and OpenBSD.

Almost all ISA sound cards include hardware OPL support, but most PCI cards do not. Some PCI cards that do include hardware OPL support (and have been tested) include:

- C-Media CMI8738
- Cards based on the Yamaha YMF724

Information on other PCI cards that could potentially be used, along with instructions on how to set up hardware OPL, can be found in the {% include Srclink.md filename="README.Music.md" text="README.Music" %} file.

## Related pages {#related_pages}

- [Opl-branch](/Opl-branch.md), the source code branch where OPL MIDI support was developed. This includes additional technical information about the design of the feature.
