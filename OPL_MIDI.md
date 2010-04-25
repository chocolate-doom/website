[[Image:Image:Yamaha YM3812.jpg|thumb|right|Yamaha YM3812 (OPL2) synthesizer chip]]
Chocolate Doom includes OPL MIDI playback support.  This plays the in-game MIDI music in the same way as [[doom:Vanilla Doom|Vanilla Doom]] sounds when using a SoundBlaster card.

== Overview ==

In the early '90s, most sound cards used designs based on the [[wikipedia:SoundBlaster|SoundBlaster]].  The SoundBlaster was backwards-compatible with an earlier sound card, the [[wikipedia:Ad Lib, Inc.|AdLib]] card.  The AdLib included an FM synthesis chip, the [[wikipedia:Yamaha YM3812|Yamaha YM3812]] also known as the ''OPL2''.  Later cards used the successor, the [[wikipedia:Yamaha YMF262|Yamaha YMF262]] (''OPL3''), which is backwards compatible with the OPL2.

Because of the popularity of the SoundBlaster and its clones, this was the most common playback method for MIDI music when playing Doom. However, although this chip was once a universal feature of almost all sound cards, modern sound cards do not include it.  Modern CPUs are fast enough that much higher quality MIDI playback can be generated in software using wavetable synthesis software (such as Timidity).

Most Doom source ports play back MIDI music using MIDI interfaces provided by the OS.  This typically results in much higher quality music than what Vanilla Doom generated; however, to long-time Doom players, it means that the music never sounds quite "right".