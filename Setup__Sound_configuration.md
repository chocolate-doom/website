[[File:Configure Sound.png|thumb|right|300px]]
The '''Sound Configuration''' window controls the audio output, allowing separate volumes for the sound effects and music, as well as some different options for each.

== Sound effects ==

The sound effects may be disabled entirely, use the typical digital effects, or emulate [[PC speaker]] effects. The digital effects are normally prefered, providing a rich set of sound effects to surround the player. The PC speaker effects, on the other hand, were intended in the early 1990s as a last-ditch effort to provide sound if the player lacked a sound card to play back rich sound. Provided hardware and operating system support, Chocolate Doom may use the real PC speaker in your computer to play back the sounds, falling back to using now-standard sound output through speakers otherwise.

The number of channels may be adjusted. The setup program defaults to 8, the maximum possible, allowing up to eight sound effects to play at once. Setting this lower has no benefit on modern systems, but in the early 1990s, sound hardware would vary in the number of channels it could play at once.

In [[Chocolate Strife]], there is an additional volume control for spoken voices, as well as whether to show text on-screen along with them.

== Music ==

Partly as a space-saving measure, so that games could fit on [[Wikipedia:Floppy disk|floppy disks]], [[Wikipedia:MIDI|MIDI]] was used to store game music. Rather than having prohibitively-large [[Wikipedia:Pulse-code modulation|PCM]] files as you would find on a CD, or files such as WAV or MP3, MIDI is more like sheet music, containing the instructions to recreate music using pre-programmed instruments. As such, there are many ways the game music may be heard, and opinions differ wildly on what the "best" rendition is.

Chocolate Doom defaults to emulating [[OPL MIDI]] effects, which would be heard by Doom players in the 1990s using the popular AdLib or SoundBlaster hardware.  While Chocolate Doom, under certain hardware and operating systems, can use a real OPL chip to output its music, in most cases, this will be emulated in software and output using your normal computer's sound.

Two other alternatives for playing back MIDI effects both go through [[Wikipedia:TiMidity++|TiMidity++]] in order to synthesize the music. [[GUS]] may be selected to emulate another popular sound card at the time of Doom's release, "faking" it, in a manner, by using MIDI instruments to recreate its particular sound. Alternatively, Native MIDI may be selected so that any other configuration for MIDI synthesis can be set up, giving vastly different styles to the music depending on the sound font used.

Music configuration, especially MIDI, can be extremely involved, see [https://github.com/chocolate-doom/chocolate-doom/blob/master/README.Music README.Music] for fine details.