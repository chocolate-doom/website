---
redirect_from:
 - /wiki/index.php/PC_speaker
categories:
 - Features
---
{% include YoutubeEmbed.md id="zqTaB7y7tug" width="300" height="225" right="1" %}
{% include Doomwiki.md p1="PC speaker sound effects" %}
Today, it is expected that most (if not all) computers should have some sort of digital sound card to help benefit the user, however, when Doom was first released in 1993, digital sound cards were not as common as they are now.

A way of getting around this issue was that when ID Software wrote Doom, they included support for two different sound formats, the main one is the digital sound format, which supports 8-bit mono sound effects; this is used for the sound blaster and all other sound cards supported by Doom. The second one is PC speaker format, this uses the speakers that have been built into every PC.

The latter format can be considered to be two things: Outdated and basic. Rather than hearing the sound effects in Doom the way that they were intended, a user will instead hear basic beeping sound effects.

Chocolate Doom pioneered PC speaker support within Doom source ports and remains one of the few ports to support the use of PC speaker sound effects.

The format of PC speaker sound files was reverse-engineered and the details {% include Idgames.md file="sounds/pcspkr10.zip" title="published" %} as part of the development of this feature. Before this, PC speaker sound effects remained one of the last remaining unknown lump formats in Doom WAD files.

Backends for \"native\" PC speaker playback (through the real PC speaker) exist for Linux and the BSDs. On other systems, the PC speaker can be emulated through the digital sound output.

To turn on the PC speaker sounds, open up `chocolate-doom-setup.exe`, locate \"Configure Sound\" and then simply select `PC speaker effects` under \"Sounds effects\" and disable the music - once you are done, save these changes - now the next time you run Chocolate Doom, you should hear the changes made.

## External links {#external_links}

- [Youtube video showing Chocolate Doom running with PC speaker output](https://www.youtube.com/watch?v=zqTaB7y7tug)
- [Old Youtube video showing Chocolate Doom running with PC speaker output](https://www.youtube.com/watch?v=04LUREGAbkQ)
- [PC Speaker simulation](https://www.doomworld.com/idgames/sounds/pcspksim) - A PWAD that emulates the sound of the PC speaker that can be used instead of making use of the setup (this WAD can also be used on any other port)
