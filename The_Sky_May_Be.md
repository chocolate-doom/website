---
redirect_from:
 - /wiki/index.php/The_Sky_May_Be
categories:
 - WADs
---
{% image filename:Skymaybe.png %}
The Sky May Be running under Chocolate Doom
{% endimage %}

{% include Doomwiki.md  %}
[The Sky May Be](https://doomwiki.org/wiki/The_Sky_May_Be) is an infamous [1](https://www.doomworld.com/10years/bestwads/infamous.php) WAD file for Doom 1; having been loved and hated equally by all sorts of people. The WAD does have a clunky DOS installation which might be confusing on how to get it to run properly on Chocolate Doom.

Instructions:

1.  Download a copy of {% include Idgames.md file="levels/doom/s-u/smb_v102.zip" title="smb_v102.zip" %}.
2.  Extract SKYMAYBE.EXE.

    : Under Unix systems this can be done using the *unzip* command, eg. `unzip -L smb_v102.zip skymaybe.exe`
3.  The SKYMAYBE.EXE file is a self-extracting [RAR file](https://en.wikipedia.org/wiki/RAR). Rename it to skymaybe.rar, and extract it using your favorite archive program.

    : Under Unix systems, this can be done using the *[unrar](https://en.wikipedia.org/wiki/Unrar)* command, eg. `unrar x skymaybe.rar`
4.  Run Chocolate Doom with the following parameters

<!-- -->

    chocolate-doom -merge _smb417.wad -deh blessed.deh
