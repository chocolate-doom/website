[[File:Configure Sound.png|thumb|right|300px]]
The '''Sound Configuration''' window controls the audio output, allowing separate volumes for the sound effects and music, as well as some different options for each.

== Sound effects ==

The sound effects may be disabled entirely, use the typical digital effects, or emulate [[PC speaker]] effects. The digital effects are normally prefered, providing a rich set of sound effects to surround the player. The PC speaker effects, on the other hand, were intended in the early 1990s as a last-ditch effort to provide sound if the player lacked a sound card to play back rich sound. Provided hardware and operating system support, Chocolate Doom may use the real PC speaker in your computer to play back the sounds, falling back to using now-standard sound output through speakers otherwise.

The number of channels may be adjusted. The setup program defaults to 8, the maximum possible, allowing up to eight sound effects to play at once. Setting this lower has no benefit on modern systems, but in the early 1990s, sound hardware would vary in the number of channels it could play at once.

In [[Chocolate Strife]], there is an additional volume control for spoken voices, as well as whether to show text on-screen along with them.

== Music ==

Unlike digital recorded music that you might find on a CD or an MP3 file, Doom's music is [[Wikipedia:MIDI|MIDI]]-based. MIDI is like a digital representation of sheet music, containing the instructions to recreate music using pre-programmed instruments. As such, there are many ways the game music may be heard, and opinions differ wildly on what the "best" rendition is. Options are:

* [[OPL MIDI]] (the default), which reproduces the sound of the AdLib / SoundBlaster hardware that was most common in the 1990s. This is usually emulated in software, but Chocolate Doom can be configured to use a real OPL chip to output its music.

* [[Wikipedia:TiMidity++|TiMidity++]]: a popular software MIDI synthesis program that can be configured with many different sound fonts to change the sound of the music.

* [[GUS]] pseudo-emulation, which reproduces the sound of the Gravis Ultrasound Card.

* Native MIDI, which uses the operating system's built-in MIDI playback. Most operating systems have some form of built-in MIDI playback, though the quality can vary.

Music configuration, especially MIDI, can be extremely involved, see [https://github.com/chocolate-doom/chocolate-doom/blob/master/README.Music README.Music] for fine details.

[[Category:Setup tool]]