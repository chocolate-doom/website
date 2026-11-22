---
redirect_from:
 - /wiki/index.php/Doom_1.91_demo_format
 - /wiki/index.php/Doom_1.91
 - /Doom_1.91.html
categories:
 - Features
---
{% include Doomwiki.md p1="Turning resolution is lowered when recording demos" %}
A [limitation](https://doomwiki.org/wiki/Turning_resolution_is_lowered_when_recording_demos) of the Vanilla Doom demo format means that the player\'s turning resolution is reduced when recording demos. This can have a significantly detrimental effect on the performance of players recording demos.

A solution to this problem was developed under DOS in the form of a binary patch which can be applied to the Doom executable. This changes the demo format but removes the degradation in resolution.

Chocolate Doom supports playback of demos in this format, and also supports recording them. To record a demo in *Doom 1.91* demo format, use the \"*-longtics*\" command-line parameter. For example, to record a demo named \"icecream.lmp\" in this format:

    chocolate-doom -longtics -record icecream

## External links {#external_links}

- [Turning resolution is lowered when recording demos](https://doomwiki.org/wiki/Turning_resolution_is_lowered_when_recording_demos) (Doom Wiki)
