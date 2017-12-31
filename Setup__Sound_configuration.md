[[File:Configure Sound 2016.png|thumb|right|300px]]
The '''Sound Configuration''' allows the sound effect and music options to be configured.

== Sound effects ==

Several different options are available for sound effects:

* '''Disabled''': Sound effects are disabled entirely.

* '''PC speaker sound effects''': PC speaker effects were intended in the early 1990s as a last-ditch effort to provide sound if the player lacked a sound card to play back rich sound. Provided hardware and operating system support, Chocolate Doom may use the real PC speaker in your computer to play back the sounds, falling back to emulating the PC speaker using now-standard sound output otherwise.

:PC speaker effects are only available for Doom and are not usable in other games.

* '''Digital sound effects''': Sampled, realistic sound effects. This is the default option. There are some additional options when using digital sound effects:
:* '''Pitch-shifted sounds''': early versions of Doom randomly varied the pitch of the digital sound effects to attempt to make them sound less repetitive. Turning on this feature restores this functionality.
:* '''Show text with voices''': in [[Chocolate Strife]], turning on this option retains on-screen subtitles when in-game speech plays.

== Music ==

Unlike digital recorded music that you might find on a CD or an MP3 file, Doom's music is [[Wikipedia:MIDI|MIDI]]-based. MIDI is like a digital representation of sheet music, containing the instructions to recreate music using pre-programmed instruments. As such, there are many ways the game music may be heard, and opinions differ wildly on what the "best" rendition is. Options are:

* '''Disabled''': no music plays.

* '''[[OPL MIDI|OPL (Adlib/Soundblaster)]]''' (the default), which reproduces the sound of the AdLib / SoundBlaster hardware that was most common in the 1990s. This is usually emulated in software, but Chocolate Doom can be configured to use a real OPL chip to output its music.

* '''[[GUS]] pseudo-emulation''': reproduces the sound of the Gravis Ultrasound Card. This option requires a set of [https://www.doomworld.com/idgames/music/dgguspat auxiliary GUS patch files] to be downloaded in order to work.

* '''Native MIDI''', which uses the operating system's built-in MIDI playback. Most operating systems have some form of built-in MIDI playback, though the quality can vary.

:* [[Wikipedia:TiMidity++|TiMidity++]] can be used instead of the native MIDI playback. Timidity is a popular software MIDI synthesis program that can be configured with many different sound fonts to change the sound of the music.

Music configuration, especially MIDI, can be extremely involved, see {{srclink|README.Music.md|README.Music}} for more details.