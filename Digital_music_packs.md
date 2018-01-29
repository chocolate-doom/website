{{#ev:youtube|KlVuY4rFdm4|300x225|right}}
Doom's music is MIDI-based. This means that the music can sound vastly different depending on the hardware used to play it. Most PCs in the '90s played back Doom's music using low quality [[OPL MIDI|FM synthesis]] but superior options were available. One example is the [[wikipedia:Roland SC-55|Roland Sound Canvas SC-55]], a piece of professional MIDI synthesis hardware that was originally used by Bobby Prince to compose Doom's music. For this reason, the SC-55 is sometimes considered the "canonical" playback format for Doom's music.

Future versions of Chocolate Doom will include support for digital music packs: high quality digital recordings of Doom's music from devices such as the SC-55 that can be used in game in place of the normal MIDI playback. When a substituted track is to be played, the high quality recording is played instead. An example can be seen in the video to the right.

High quality recordings of Doom's music already exist, such as [http://sc55.duke4.net/ Brandon Blume's SC-55 recordings]. We hope to provide a set of downloadable music packs for each of the games supported by Chocolate Doom. 

The digital music pack functionality also provides a more convenient replacement for Hexen's CD music playback. Hexen was distributed on CDs with audio tracks containing high quality recordings of the in-game music. The game could then play these recordings instead of using the user's hardware MIDI playback which in the '90s was often primitive. [[Chocolate Hexen]] no longer includes CD music playback support but the same result can be achieved using a digital music pack.

== How to install music packs ==
[[File:Configure_digital_music_packs.png|thumb|right|Setup tool showing configuration option for digital music packs.]]

1. Create a new directory (folder) where you will save your music packs. You can install multiple music packs into the same directory.

2. Download and extract a music pack. Here are some examples:

* [https://www.chocolate-doom.org/music-packs/hexen-music-ogg.zip Hexen CD music pack] (.ogg). This is just a rip of the music tracks found on Hexen install CDs.

3. Next, open the [[Setup]] tool. Go to the [[Setup/Sound_configuration|Configure Sound]] dialog and select "Native MIDI" as the music type. There will be an option named "Digital music pack directory" (see screenshot). Select this option and enter the path to the directory where the music pack was extracted (the correct directory will contain .cfg file(s) named <code>hexen-music.cfg</code>, <code>doom1-music.cfg</code> or similar).

4. Return to the main menu and choose the "Save parameters and launch game" option.

[[Category:Features]]
[[Category:Music]]