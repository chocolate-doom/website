[[Image:Yamaha_YM3812.jpg|thumb|right|A Yamaha YM3812 (OPL2) chip.]]
The '''opl-branch''' is a branch in the Chocolate Doom subversion repository. The purpose of the branch is to add OPL MIDI playback support.

== Overview ==

In the early '90s, most sound cards used designs based on the ''SoundBlaster''.  The SoundBlaster was backwards-compatible with an earlier sound card, the Yamaha Adlib card.  The Adlib included an FM synthesis chip, the ''Yamaha YM3812'', also known as the ''OPL2''.  Later cards used the successor, the ''Yamaha YMF262'' (''OPL3''), which is backwards compatible with the OPL2.

Doom used this chip for MIDI music playback.  The chip itself implements a set of generic synthesizers, which can be configured to make various different sound effects depending on how they are programmed.  By using a table of register values to use to emulate the various different instruments in the General MIDI set, it is possible to play back MIDI music. The table used by Doom is stored in the IWAD file in the ''GENMIDI'' lump.

Although Adlib-compatible FM synthesis was once a universal feature of almost all sound cards, modern sound cards do not include the feature.  Modern CPUs are fast enough that much higher quality MIDI playback can be generated in software using wavetable synthesis software (such as Timidity).

Most Doom source ports play back MIDI music using MIDI interfaces provided by the OS.  This typically results in much higher quality music than what Vanilla Doom generated; however, to long-time Doom players, it means that the music never sounds quite "right".  Even DOS source ports can sound different; Boom, for example, did not use the instrument patches from the GENMIDI lump, so even when using OPL playback the music sounds different.

== Design ==

The objective of Chocolate Doom's OPL support is to provide OPL MIDI playback that is identical, or as close as possible to, Vanilla Doom's MIDI playback.

To accomplish this, a modified version of DOSbox is being used that generates a trace of the register writes to the OPL chip.  These register writes can then be examined and correlated with the MIDI events that were being played.  The objective is to create code that can generate the same register writes; if the register writes are identical to those of Vanilla Doom, the music playback must also be identical.

As many modern computers do not include hardware OPL MIDI, OPL emulation code is required to perform OPL playback.  OPL emulation code originally used in MAME is being used for this purpose.  There are various different versions of this code and not all are GPL compatible; the version from ScummVM is being used as it appears to be usable.  If the quality of the OPL emulation is poor, other options can be investigated.

=== Hardware OPL ===

Some sound cards do retain hardware OPL support.  A modular backend means that the OPL code can also be used on these cards to play OPL music in hardware.

PCI cards that include hardware OPL support include:

* C-Media CMI8738
* Cards based on the Yamaha YMF724

== External links ==

* [http://chocolate-doom.svn.sourceforge.net/viewvc/chocolate-doom/branches/opl-branch/ opl-branch] source code.