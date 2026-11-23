---
redirect_from:
 - /wiki/index.php/Setup/Sound_configuration
 - /setup-sound
---
{% include Image.md image="Configure_Sound_2016.png" width="300" %}

The **Sound Configuration** allows the sound effect and music options to be configured.

## Sound effects {#sound_effects}

Several different options are available for sound effects:

- **Disabled**: Sound effects are disabled entirely.
- **PC speaker sound effects**: PC speaker effects were intended in the early 1990s as a last-ditch effort to provide sound if the player lacked a sound card to play back rich sound. Provided hardware and operating system support, Chocolate Doom may use the real PC speaker in your computer to play back the sounds, falling back to emulating the PC speaker using now-standard sound output otherwise. PC speaker effects are only available for Doom, Strife, and Chex Quest, but are not usable in other games.
- **Digital sound effects**: Sampled, realistic sound effects. This is the default option. There are some additional options when using digital sound effects:
  - **Pitch-shifted sounds**: early versions of Doom randomly varied the pitch of the digital sound effects to attempt to make them sound less repetitive. Turning on this feature restores this functionality.
  - **Show text with voices**: in [Chocolate Strife](/Chocolate_Strife.md), turning on this option retains on-screen subtitles when in-game speech plays.

## Music

Unlike digital recorded music that you might find on a CD or an MP3 file, Doom\'s music is [MIDI](https://en.wikipedia.org/wiki/MIDI)-based. MIDI is like a digital representation of sheet music, containing the instructions to recreate music using pre-programmed instruments. As such, there are many ways the game music may be heard, and opinions differ wildly on what the \"best\" rendition is. Options are:

- **Disabled**: no music plays.
- **[OPL (Adlib/Soundblaster)](/OPL_MIDI.md)** (the default), which reproduces the sound of the AdLib / SoundBlaster hardware that was most common in the 1990s. This is usually emulated in software, but Chocolate Doom can be configured to use a real OPL chip to output its music.
- **[GUS](/GUS.md) pseudo-emulation**: reproduces the sound of the Gravis Ultrasound Card. This option requires a set of [auxiliary GUS patch files](https://www.doomworld.com/idgames/music/dgguspat) to be downloaded in order to work.
- **Native MIDI**, which uses the operating system\'s built-in MIDI playback. Most operating systems have some form of built-in MIDI playback, though the quality can vary.
  - [TiMidity++](https://en.wikipedia.org/wiki/TiMidity++) can be used instead of the native MIDI playback. Timidity is a popular software MIDI synthesis program that can be configured with many different sound fonts to change the sound of the music.

Music configuration, especially MIDI, can be extremely involved, see {% include Srclink.md filename="README.Music.md" text="README.Music" %} for more details.
