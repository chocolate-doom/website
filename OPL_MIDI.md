[[Image:Yamaha YM3812.jpg|thumb|right|Yamaha YM3812 (OPL2) synthesizer chip]]
Chocolate Doom includes OPL MIDI playback support.  This plays the in-game MIDI music in the same way as [[doom:Vanilla Doom|Vanilla Doom]] sounds when using a SoundBlaster card.

== Overview ==

In the early '90s, most sound cards used designs based on the [[wikipedia:SoundBlaster|SoundBlaster]].  The SoundBlaster was backwards-compatible with an earlier sound card, the [[wikipedia:Ad Lib, Inc.|AdLib]] card.  The AdLib included an FM synthesis chip, the [[wikipedia:Yamaha YM3812|Yamaha YM3812]] also known as the ''OPL2''.  Later cards used the successor, the [[wikipedia:Yamaha YMF262|Yamaha YMF262]] (''OPL3''), which is backwards compatible with the OPL2.

Because of the popularity of the SoundBlaster and its clones, this was the most common playback method for MIDI music when playing Doom. However, although this chip was once a universal feature of almost all sound cards, modern sound cards do not include it.  Modern CPUs are fast enough that much higher quality MIDI playback can be generated in software using wavetable synthesis software (such as Timidity).

Most Doom source ports play back MIDI music using MIDI interfaces provided by the OS.  This typically results in much higher quality music than what Vanilla Doom generated; however, to long-time Doom players, it means that the music never sounds quite "right".

== Enabling OPL MIDI ==

OPL MIDI playback can be enabled from the setup tool: go to the "Configure sound" menu, select the "Music playback" dropdown and choose "OPL (Adlib/SB)".

== Hardware OPL ==

As modern PCs do not include an OPL chip, Chocolate Doom includes code that emulates an OPL chip in software to achieve the same effect.  However, this may not sound exactly right; there are some MIDI tracks and instruments that will sound wrong.  Acute listeners may notice subtle differences between the emulated OPL playback and playback with a "real" hardware OPL chip.

Some sound cards do retain hardware OPL support.  Chocolate Doom can use these cards to play OPL music in hardware.  Hardware playback is supported on Linux, Windows (9x and NT), and OpenBSD.

Almost all ISA sound cards include hardware OPL support, but most PCI cards do not.  Some PCI cards that do include hardware OPL support (and have been tested) include:

* C-Media CMI8738
* Cards based on the Yamaha YMF724

Information on other PCI cards that could potentially be used, along with instructions on how to set up hardware OPL, can be found in the [https://github.com/chocolate-doom/chocolate-doom/blob/master/README.Music README.Music] file.

== Related pages ==

* [[Opl-branch]], the source code branch where OPL MIDI support was developed.  This includes additional technical information about the design of the feature.

[[Category:Features]]
[[Category:Music]]