---
redirect_from:
 - /wiki/index.php/Digital_music_packs
categories:
 - Features
 - Music
---
{% include YoutubeEmbed.md id="KlVuY4rFdm4" width="300" height="225" right="1" %}
Doom\'s music is MIDI-based. This means that the music can sound vastly different depending on the hardware used to play it. Most PCs in the \'90s played back Doom\'s music using low quality [FM synthesis](/OPL_MIDI.md) but superior options were available. One example is the [Roland Sound Canvas SC-55](https://en.wikipedia.org/wiki/Roland_SC-55), a piece of professional MIDI synthesis hardware that was originally used by Bobby Prince to compose Doom\'s music. For this reason, the SC-55 is sometimes considered the \"canonical\" playback format for Doom\'s music.

Chocolate Doom includes support for digital music packs: high quality digital recordings of Doom\'s music from devices such as the SC-55 that can be used in game in place of the normal MIDI playback. When a substituted track is to be played, the high quality recording is played instead. An example can be seen in the video to the right.

High quality recordings of Doom\'s music already exist, such as [Brandon Blume\'s SC-55 recordings](http://sc55.duke4.net/). We hope to provide a set of downloadable music packs for each of the games supported by Chocolate Doom.

The digital music pack functionality also provides a more convenient replacement for Hexen\'s CD music playback. Hexen was distributed on CDs with audio tracks containing high quality recordings of the in-game music. The game could then play these recordings instead of using the user\'s hardware MIDI playback which in the \'90s was often primitive. [Chocolate Hexen](/Chocolate_Hexen.md) no longer includes CD music playback support but the same result can be achieved using a digital music pack.

## How to install music packs {#how_to_install_music_packs}

{% image filename:"Configure_digital_music_packs.png" %}
Setup tool showing configuration option for digital music packs.
{% endimage %}

1\. Create a new directory (folder) where you will save your music packs. You can install multiple music packs into the same directory.

2\. Download a music pack. Here are some examples:

- [Hexen CD music pack](https://www.chocolate-doom.org/music-packs/hexen-music-ogg.zip) (.ogg). This is just a rip of the music tracks found on Hexen install CDs.

3\. Next, open the [Setup](/Setup.md) tool. Go to the [Configure Sound](/Setup__Sound_configuration.md) dialog and select \"Native MIDI\" as the music type. Then, press "M" or click the button marked "M=Music Packs". Your file browsing app should open, showing you a folder containing a file named "README.txt". This text file is just a placeholder that explains the purpose of the folder.

4\. Extract your music pack into the folder that was opened in the previous step. You should make sure that the files are all in that folder and not in a subfolder. Once you're done, close the window and go back to the setup tool.

5\. Return to the main menu and choose the \"Save parameters and launch game\" option.

## Technical details

IWAD tracks are identified based on filename. For example, Doom II MAP01's music track should be named `d_runnin.ogg` or `d_runnin.flac`. If a file with this name is found in the music pack folder, it will be played instead of the normal music when playing MAP01.

The full list of recognized filenames can be found {% include Srclink.md text="in the source code" filename="src/i_musicpack.c" %}. The list includes names for all the music tracks in Doom, Doom II, Heretic, Hexen and Strife.

## Making music packs for PWADs

The filename-based approach described above only works for the IWAD music tracks. You can make a music pack for other tracks as well (such as for a PWAD's soundtrack) but you'll need to create your own configuration file that describes the PWAD's music tracks and which tracks to use.

In the following example we'll imagine you're making a music pack for a file named `deca2.wad`. Run the game as shown with the `-dumpsubstconfig` option. The program will exit with a message confirming that the config file was written.
```
$ chocolate-doom -file deca2.wad -dumpsubstconfig deca2.cfg
[....]
Substitute MIDI config file written to deca2.cfg.
```
If you open `deca2.cfg`, you should see the generated configuration, which will look something like:
```
# Example Chocolate Doom substitute MIDI file.

# SHA1 hash                              = filename
79080e9681a2d7bec3fbc4f251aaaab3a3831ac1 = D_RUNNIN.ogg
868b3aae73c7b12e92c0fd80431885097ff50487 = D_STALKS.ogg
19237754d2eb85f41d846b34660dd52dd1a83ffd = D_COUNTD.ogg
00abff3b61b25a6855d2413ac26894ec7c559dfb = D_BETWEE.ogg
[...]
```
The "SHA1 hashes" are the key thing that you need to create your music pack. They identify the *content* of a music lump found in a Doom WAD file. What the configuration file effectively says is, "when you see a lump with this content (hash), play the music from this file instead".

Note that in your generated file there will be entries for **all** music tracks, including those in the IWAD file. The entries for your PWAD file will be at the bottom of the file; those are the ones you want.

The next step should be to edit the filenames to match the files in your music track. You may want to put the files in a subfolder. Your resulting configuration might look something like:
```
# Configuration file for deca2.wad music pack.

# SHA1 hash                              = filename
df3ba6fb0600f7fed71000a7e2373755c2d61879 = deca2-music-pack/deca2_01.ogg
2a10a8998f6329fec7ef5c0c29d07da8fcd5a86a = deca2-music-pack/deca2_02.ogg
bede61b8927862d4cae94068f591aa9d9797cf34 = deca2-music-pack/deca2_03.ogg
562af3d146b2ace25de05255c22bdd88d7d7d826 = deca2-music-pack/deca2_04.ogg
e843ed84e9476360ceaf971b9aff3e89739e5405 = deca2-music-pack/deca2_05.ogg
dea2cdd2e1cdb884c4ae4432a134b2b0b6d88fdc = deca2-music-pack/deca2_06.ogg
6ad73fb278b6eab46fe3383852b471f7be5dfb03 = deca2-music-pack/deca2_07.ogg
fb375c57ec6990519b6863cc42e48dc456fd3b80 = deca2-music-pack/deca2_08.ogg
e843ed84e9476360ceaf971b9aff3e89739e5405 = deca2-music-pack/deca2_09.ogg
7a8084198fec1f4af978ca0c1f8142981159dfec = deca2-music-pack/deca2_10.ogg
920ae553a2091a83b0e72c45f3e40c5a52c4d1e2 = deca2-music-pack/deca2_inter.ogg
70edf3ff800ee14b2efc017332df4b419388dccb = deca2-music-pack/deca2_title.ogg
```
To test out your music pack, put your configuration file in your music pack folder - it can be named anything ending in `.cfg`. Launch the game with the WAD and you should hear the substitute music tracks play. If they don't play, check that:

* You used the right SHA1 hashes. Remember that `-dumpsubstconfig` writes hashes for every music lump in both the IWAD and PWAD files. If you used the wrong hashes then your music pack won't work.
* The files are in the right places. The `.cfg` file needs to be in the music pack folder and not in a subfolder.
* The music files (`.ogg` or `.flac` files) match the filenames listed in your configuration file.
