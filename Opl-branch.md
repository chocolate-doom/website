---
redirect_from:
 - /wiki/index.php/Opl-branch
categories:
 - Inactive_branches
---
{% capture caption %}
A Yamaha YM3812 (OPL2) chip.
{% endcapture %}
{% include Image.md caption=caption image="Yamaha_YM3812.jpg" %}

The **opl-branch** is a branch in the Chocolate Doom subversion repository. The purpose of the branch was to add OPL MIDI playback support. The branch has now been merged back into the mainline code, and no further changes will be made on it.

## Overview

In the early \'90s, most sound cards used designs based on the [SoundBlaster](https://en.wikipedia.org/wiki/SoundBlaster). The SoundBlaster was backwards-compatible with an earlier sound card, the [AdLib](https://en.wikipedia.org/wiki/Ad_Lib,_Inc.) card. The AdLib included an FM synthesis chip, the [Yamaha YM3812](https://en.wikipedia.org/wiki/Yamaha_YM3812) also known as the *OPL2*. Later cards used the successor, the [Yamaha YMF262](https://en.wikipedia.org/wiki/Yamaha_YMF262) (*OPL3*), which is backwards compatible with the OPL2.

Doom used this chip for MIDI music playback. The chip itself implements a set of generic synthesizers, which can be configured to make various different sound effects depending on how they are programmed. By using a table of register values to use to emulate the various different instruments in the General MIDI set, it is possible to play back MIDI music. The table used by Doom is stored in the IWAD file in the [GENMIDI](https://doomwiki.org/wiki/GENMIDI) lump.

Although Adlib-compatible FM synthesis was once a universal feature of almost all sound cards, modern sound cards do not include the feature. Modern CPUs are fast enough that much higher quality MIDI playback can be generated in software using wavetable synthesis software (such as Timidity).

Most Doom source ports play back MIDI music using MIDI interfaces provided by the OS. This typically results in much higher quality music than what Vanilla Doom generated; however, to long-time Doom players, it means that the music never sounds quite \"right\". Even DOS source ports can sound different; Boom, for example, did not use the instrument patches from the GENMIDI lump, so even when using OPL playback the music sounds different.

## Design

The objective of Chocolate Doom\'s OPL support is to provide OPL MIDI playback that is identical, or as close as possible to, Vanilla Doom\'s MIDI playback.

To accomplish this, a modified version of DOSBox was used that generates a trace of the register writes to the OPL chip. These register writes can then be examined and correlated with the MIDI events that were being played. The objective is to create code that can generate the same register writes; if the register writes are identical to those of Vanilla Doom, the music playback must also be identical.

As many modern computers do not include hardware OPL MIDI, OPL emulation code is required to perform OPL playback. OPL emulation code originally used in MAME is being used for this purpose. There are various different versions of this code and not all are GPL compatible; the version from ScummVM is being used as it appears to be usable. If the quality of the OPL emulation is poor, other options can be investigated.

### Hardware OPL {#hardware_opl}

Some sound cards do retain hardware OPL support. A modular backend means that the OPL code can also be used on these cards to play OPL music in hardware.

Almost all ISA sound cards include hardware OPL support, but most PCI cards do not. Some PCI cards that do include hardware OPL support (and have been tested) include:

- C-Media CMI8738
- Cards based on the Yamaha YMF724

Information on other PCI cards that could potentially be used can be found in the {% include Srclink.md filename="README.OPL" ref="opl-branch" %} file.

## External links {#external_links}

- {% include Gitbranch.md name="opl-branch" %} - now integrated into the main codebase
- [OPL research data](https://github.com/chocolate-doom/research/tree/master/opl).
