---
redirect_from:
 - /wiki/index.php/Batman_Doom
categories:
 - TCs
---
{% include Image.md image="Chocolate-batman-doom.png" width="320" %}

{% include Doomwiki.md  %}
The following are instructions on how to play [Batman Doom](https://doomwiki.org/wiki/Batman_Doom) under Chocolate Doom.

1.  First, download {% include Idgames.md file="themes/batman/batman.zip" title="batman.zip" %} containing the game files, and extract it.
2.  Download {% include Idgames.md file="themes/batman/vbatman.zip" title="the Vanilla Batman Doom fix" %}, and extract it.
3.  (Optional) Download the {% include Idgames.md file="themes/batman/macmoltv.zip" title="patch to restore Zeke's original Molotov Cocktail attack" %}, and extract it.
4.  Run with the following options:

<!-- -->

    chocolate-doom -merge batman.wad -deh batman.deh vbatman.deh

If using the Molotov Cocktail fix, simply add `macmoltv.deh` to the end.
