---
redirect_from:
 - /wiki/index.php/Obituary
categories:
 - TCs
---
{% image filename:Obituary.png width:320 %}
Obituary running in Chocolate Doom.
{% endimage %}

{% include Doomwiki.md  %}
**Obituary** is a [TC](https://doomwiki.org/wiki/TC) by The Innocent Crew.

Loading Obituary is unusual because it uses [NWT](https://doomwiki.org/wiki/NWT) rather than DEUSF. To play Obituary without the new weapons:

1.  Download {% include Idgames.md file="levels/doom2/m-o/obtic11.zip" title="Obituary TC" %}.
2.  Extract the .zip file containing the game files.
3.  Run with these [command line arguments](/Command_line_arguments.md):

<!-- -->

    chocolate-doom -deh obtic1.deh -nwtmerge obtic2.wad -file obtic1.wad obtic2.wad

To play Obituary with the new weapons:

- Download {% include Idgames.md file="levels/doom2/m-o/obtic11.zip" title="Obituary TC" %} and extract the .zip file.
- Run NWT (which comes included in the Obituary archive) with these command line arguments:

<!-- -->

    nwt -join obtic2.wad obtic3.wad

- Run NWT a second time with these command line arguments:

<!-- -->

    nwt -as obtic2.wad

- Run Chocolate Doom with the following command line arguments:

<!-- -->

    chocolate-doom -deh obtic2.deh -file obtic1.wad obtic2.wad
