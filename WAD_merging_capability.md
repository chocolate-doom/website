---
redirect_from:
 - /wiki/index.php/WAD_merging_capability
 - /wiki/index.php/Merging
 - /Merging.html
categories:
 - Features
---
{% capture caption %}
Traditionally, TCs like [Aliens TC](https://doomwiki.org/wiki/Aliens_TC) required modification of the main WAD file
{% endcapture %}
{% include Image.md caption=caption image="Chocolate-aliens-doom.png" %}

[Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom) does not support loading modified sprites in [PWAD](https://doomwiki.org/wiki/PWAD) files. As a result, most TCs were traditionally distributed in the form of a WAD file which had to be merged with the main [IWAD](https://doomwiki.org/wiki/IWAD) file. This was usually done through an included program like \"deusf\" or \"nwt\".

Chocolate Doom retains Vanilla Doom\'s behavior when loading PWADs using the \"*-file*\" [command line option](https://doomwiki.org/wiki/Command_line_option), and will not load sprites correctly. However, it includes new command line options which simulate the action of merging a WAD file into the IWAD. Different options are provided to simulate the behavior of different tools.

### DeuSF-style {#deusf_style}

The majority of sprite and flat mods use the *DeuSF* program. Merging of this type is simulated using the *-merge* command line option.

As an example, to load the WAD needed for [Aliens TC](/Aliens_TC.md):

    chocolate-doom '''-merge alitcsf.wad''' -file alitcsnd.wad alitcwad.wad -deh atcud19.deh

### NWT-style {#nwt_style}

Some mods (such as [Mordeth](/Mordeth.md)) use *[NWT](https://doomwiki.org/wiki/NWT)*. In this case, there are three command line options:

-af \<file\>
: Merges flats from the given PWAD. Equivalent to *nwt -af \<file\>*.

-as \<file\>
: Merges sprites from the given PWAD. Equivalent to *nwt -as \<file\>*.

-aa \<file\>
: Merges all flats and sprites from the given PWAD. Equivalent to *nwt -af \<file\> -as \<file\>*.

## See also {#see_also}

- [WAD merging (technical)](/WAD_merging_(technical).md) - in depth information on how the WAD merging methods operate.
