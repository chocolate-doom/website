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

== Installing music packs for several games ==

It is easy to set up a music pack for a single game: extract the audio files to the music pack folder as described in the above section, and Chocolate Doom should recognize the files automatically.

An issue arises when several distinct games/iwads use the same default track names (for example, Doom 2 and Final Doom: TNT Evilution). Since Chocolate Doom looks for the tracks of all games in the same music pack folder, and you cannot have 2 files sharing the same name, there is a conflict. To resolve the conflict, you need to change the name of the tracks of one of the two conflicting games. But doing so, Chocolate Doom will not be able to find the audio tracks of that game anymore. To solve this, we need to write a short ''.cfg'' file to point Chocolate Doom in the right direction, by assigning each track to its new name.

To start off, you can generate a ''.cfg'' file containing the default name assignments using Chocolate Doom itself (see https://www.chocolate-doom.org/wiki/index.php/Command_line_arguments#Obscure_and_less-used_options) using the '''-dumpsubstconfig <filename>''' CLI argument.
Doing so with TNT.WAD results in the following file:

 <nowiki>
# Example Chocolate Doom substitute MIDI file.

# SHA1 hash                              = filename
97d5863d91df1b76aa21c7d44c26a30cd9c722ca = D_RUNNIN.ogg
f4721b6c93b00a3fbf8dd24c2db6f2cabe9e2626 = D_STALKS.ogg
a55d400570ad255a576bc39d5b3f32a7f96a2728 = D_COUNTD.ogg
59571ac502fc595e0e3d16d0b159cbefcaf76579 = D_BETWEE.ogg
16c38fd3f10830e009be30e49819e8f9ca10a31b = D_DOOM.ogg
74f3e46aa433fae2a903efd6a8a7aff867b61096 = D_THE_DA.ogg
34cf5e4fcc9fbc0c6b6fa4944791002a0e661e86 = D_SHAWN.ogg
510f56db080f78275db948d88b4667fdef22eafa = D_DDTBLU.ogg
97d5863d91df1b76aa21c7d44c26a30cd9c722ca = D_IN_CIT.ogg
edf4f6bf3a43a9a6fc095ae259c2add1a69e28a4 = D_DEAD.ogg
019fce82f2942bf16c80499f1dd1449d6b77c4e9 = D_STLKS2.ogg
51c0872fec9f43259318bde5ed65f8dbe003733f = D_THEDA2.ogg
59571ac502fc595e0e3d16d0b159cbefcaf76579 = D_DOOM2.ogg
186c92c1979e1c898a859955dc9c76be21a252b0 = D_DDTBL2.ogg
f4721b6c93b00a3fbf8dd24c2db6f2cabe9e2626 = D_RUNNI2.ogg
5b7f14bbc17db95ef14e3ee37c27482dbcdcb4e2 = D_DEAD2.ogg
16c38fd3f10830e009be30e49819e8f9ca10a31b = D_STLKS3.ogg
edf4f6bf3a43a9a6fc095ae259c2add1a69e28a4 = D_ROMERO.ogg
19237754d2eb85f41d846b34660dd52dd1a83ffd = D_SHAWN2.ogg
05cad8ca0cc0aca19ac350414674f9205c31893c = D_MESSAG.ogg
4b7ceccbf47e78e2fa0bf9492d5d34c25523796c = D_COUNT2.ogg
91ee43214e8caf392c03e5688d559643d6dcc30a = D_DDTBL3.ogg
29d30c3fbd712016f2e574f8432b87b873d63187 = D_AMPIE.ogg
00abff3b61b25a6855d2413ac26894ec7c559dfb = D_THEDA3.ogg
954636c7ee09edf5d98f20000cfbb54d07d52204 = D_ADRIAN.ogg
5b7f14bbc17db95ef14e3ee37c27482dbcdcb4e2 = D_MESSG2.ogg
510f56db080f78275db948d88b4667fdef22eafa = D_ROMER2.ogg
91ee43214e8caf392c03e5688d559643d6dcc30a = D_TENSE.ogg
59571ac502fc595e0e3d16d0b159cbefcaf76579 = D_SHAWN3.ogg
510f56db080f78275db948d88b4667fdef22eafa = D_OPENIN.ogg
4a0ffb88faf9965a90985482d4f1f87df2607bed = D_EVIL.ogg
4b7ceccbf47e78e2fa0bf9492d5d34c25523796c = D_ULTIMA.ogg
7e804ab092a44a0f323abbd0e6f8072edae8ef5b = D_READ_M.ogg
2b2fa62ea748a2549b681be0711942a2900ab46d = D_DM2TTL.ogg
4a0ffb88faf9965a90985482d4f1f87df2607bed = D_DM2INT.ogg
</nowiki>

Name the file e.g. ''tnt-music.cfg'' and place it in the main music pack folder.

At this state, ''tnt-music.cfg'' file still does not solve our conflict issue, since it still tells Chocolate Doom to look for the music track using the same default names. But we can solve this, by editing the file, specifically the rightmost part of each line containing the associated file name.

For example, let us add a subfolder ''tnt-music'' prefix to each file name.
And while we are at it, let us replace the .ogg extension by the variable .{ext}, so it would also work with FLAC or MP3 files.

 <nowiki>
# Example Chocolate Doom substitute MIDI file.

# SHA1 hash                              = filename
97d5863d91df1b76aa21c7d44c26a30cd9c722ca = tnt-music/D_RUNNIN.{ext}
f4721b6c93b00a3fbf8dd24c2db6f2cabe9e2626 = tnt-music/D_STALKS.{ext}
a55d400570ad255a576bc39d5b3f32a7f96a2728 = tnt-music/D_COUNTD.{ext}
59571ac502fc595e0e3d16d0b159cbefcaf76579 = tnt-music/D_BETWEE.{ext}
16c38fd3f10830e009be30e49819e8f9ca10a31b = tnt-music/D_DOOM.{ext}
74f3e46aa433fae2a903efd6a8a7aff867b61096 = tnt-music/D_THE_DA.{ext}
34cf5e4fcc9fbc0c6b6fa4944791002a0e661e86 = tnt-music/D_SHAWN.{ext}
510f56db080f78275db948d88b4667fdef22eafa = tnt-music/D_DDTBLU.{ext}
97d5863d91df1b76aa21c7d44c26a30cd9c722ca = tnt-music/D_IN_CIT.{ext}
edf4f6bf3a43a9a6fc095ae259c2add1a69e28a4 = tnt-music/D_DEAD.{ext}
019fce82f2942bf16c80499f1dd1449d6b77c4e9 = tnt-music/D_STLKS2.{ext}
51c0872fec9f43259318bde5ed65f8dbe003733f = tnt-music/D_THEDA2.{ext}
59571ac502fc595e0e3d16d0b159cbefcaf76579 = tnt-music/D_DOOM2.{ext}
186c92c1979e1c898a859955dc9c76be21a252b0 = tnt-music/D_DDTBL2.{ext}
f4721b6c93b00a3fbf8dd24c2db6f2cabe9e2626 = tnt-music/D_RUNNI2.{ext}
5b7f14bbc17db95ef14e3ee37c27482dbcdcb4e2 = tnt-music/D_DEAD2.{ext}
16c38fd3f10830e009be30e49819e8f9ca10a31b = tnt-music/D_STLKS3.{ext}
edf4f6bf3a43a9a6fc095ae259c2add1a69e28a4 = tnt-music/D_ROMERO.{ext}
19237754d2eb85f41d846b34660dd52dd1a83ffd = tnt-music/D_SHAWN2.{ext}
05cad8ca0cc0aca19ac350414674f9205c31893c = tnt-music/D_MESSAG.{ext}
4b7ceccbf47e78e2fa0bf9492d5d34c25523796c = tnt-music/D_COUNT2.{ext}
91ee43214e8caf392c03e5688d559643d6dcc30a = tnt-music/D_DDTBL3.{ext}
29d30c3fbd712016f2e574f8432b87b873d63187 = tnt-music/D_AMPIE.{ext}
00abff3b61b25a6855d2413ac26894ec7c559dfb = tnt-music/D_THEDA3.{ext}
954636c7ee09edf5d98f20000cfbb54d07d52204 = tnt-music/D_ADRIAN.{ext}
5b7f14bbc17db95ef14e3ee37c27482dbcdcb4e2 = tnt-music/D_MESSG2.{ext}
510f56db080f78275db948d88b4667fdef22eafa = tnt-music/D_ROMER2.{ext}
91ee43214e8caf392c03e5688d559643d6dcc30a = tnt-music/D_TENSE.{ext}
59571ac502fc595e0e3d16d0b159cbefcaf76579 = tnt-music/D_SHAWN3.{ext}
510f56db080f78275db948d88b4667fdef22eafa = tnt-music/D_OPENIN.{ext}
4a0ffb88faf9965a90985482d4f1f87df2607bed = tnt-music/D_EVIL.{ext}
4b7ceccbf47e78e2fa0bf9492d5d34c25523796c = tnt-music/D_ULTIMA.{ext}
7e804ab092a44a0f323abbd0e6f8072edae8ef5b = tnt-music/D_READ_M.{ext}
2b2fa62ea748a2549b681be0711942a2900ab46d = tnt-music/D_DM2TTL.{ext}
4a0ffb88faf9965a90985482d4f1f87df2607bed = tnt-music/D_DM2INT.{ext}
</nowiki>

With ''tnt-music.cfg'' set up this way, we can now extract the Final Doom: TNT Evilution music pack files to a subfolder named ''tnt-music'', avoiding the name conflicts with Doom 2, and Chocolate Doom will still be able to find the audio tracks.

[[Category:Features]]
[[Category:Music]]