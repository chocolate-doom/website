---
redirect_from:
 - /wiki/index.php/Doomsday_of_UAC
categories:
 - WADs
---
{% image filename:"Chocolate-uac_dead.png" width:"320" %}
Doomsday of UAC running under Chocolate Doom
{% endimage %}

{% include Doomwiki.md  %}
Doomsday of UAC (**uac_dead.wad**) is a classic and well-known WAD file for Doom 1. It does not play properly under [Ultimate Doom](https://doomwiki.org/wiki/Ultimate_Doom) and most ports due to a change in the behavior of [sector tag 666](https://doomwiki.org/wiki/Tag_666) between versions. Chocolate Doom allows uac_dead.wad to be played by emulating the older version.

Instructions:

1.  Download a copy of {% include Idgames.md file="levels/doom/s-u/uac_dead.zip" title="UAC_DEAD" %} from idgames.
2.  Extract the file from the .zip archive.
3.  Run with the following [command-line arguments](/Command_line_arguments.md):

<!-- -->

    chocolate-doom -file uac_dead.wad -gameversion 1.9 -warp 1 8
