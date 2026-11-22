---
redirect_from:
 - /wiki/index.php/Chex_Quest
categories:
 - Features
 - TCs
---
{% capture caption %}
Chex Quest playing
{% endcapture %}
{% include Image.md caption=caption image="Chexquest.png" width="320" %}

{% include Doomwiki.md  %}
Chocolate Doom has full support for **[Chex Quest](https://doomwiki.org/wiki/Chex_Quest)**, including demo compatibility. The game is from a promotional CD-ROM included in boxes of Chex cereal in 1996. Although based on Doom, some concepts in the game were changed to make it more friendly for children. For example, the weapons do not kill the monsters; instead, they \"send them to a parallel dimension\".

To play Chex Quest in Chocolate Doom, follow these steps:

1.  Obtain a copy of Chex Quest (it can be downloaded [here](http://chexmania.tripod.com/downloads.htm)).
2.  Download the {% include Idgames.md file="themes/chex/chexdeh.zip" title="dehacked patch" %}.
3.  Put both chex.wad and chex.deh into a directory together.
4.  Run `chocolate-doom -iwad chex.wad`

### Technical information {#technical_information}

Chocolate Doom does not have all necessary data included in the engine itself to emulate the original chex.exe. Instead, as many as possible of the Chex-specific changes are stored in a separate dehacked patch. This is for the following reasons:

- There are potential copyright/trademark issues with putting the Chex strings into Chocolate Doom - Chex Quest was never open sourced.
- Some things would be quite difficult to do in C, like string replacements. The dehacked code already includes the ability to do string replacements.
- Hard-coding things is \"ugly\". Using a generic mechanism with a Dehacked patch is a lot nicer.
- Using a Dehacked patch allows it to be used with other source ports.
