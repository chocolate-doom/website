{{mbox|This page documents the old version of the statcheck tool that can be found on the <code>version1</code> branch. For the new version, see [[statcheck]].}}
'''Statcheck''' is a regression testing tool that uses thousands of levels from the [[doom:Compet-N|Compet-N]] demo archive to check for demo sync bugs in Chocolate Doom.

== Background ==

Compatibility is an important feature of Chocolate Doom, and this includes the ability to play back [[doom:Vanilla Doom|Vanilla Doom]] demo files. There has long been a vibrant community of speedrunners recording Doom demo files; the Compet-N archive contains thousands of such demos.

An obscure feature of Vanilla Doom is support for [[doom:Statistics driver|external statistics drivers]] which allow the end-of-level statistics to be dumped to an external program for processing. A proof of concept example of a statistics driver was first published in 2007 as ''statdump.exe'', a simple program that saves a text file containing the statistics data.

Combined with demo playback, this external driver was used to gather statistics data for every demo in the Compet-N archive, from Vanilla Doom running inside DOSbox. Chocolate Doom now includes the ability to dump the same statistics data to a file, meaning that it is possible to do a direct (but basic) comparison between the behavior of Vanilla Doom and Chocolate Doom: if demo sync breaks, the output will almost certainly stop matching the vanilla output.

Statcheck is therefore a Python script that will automatically run Chocolate Doom over all of the demos from the Compet-N archive and check that the output is as expected.

=== Limitations ===

The tool has some limitations:
* A mismatch of statdump outputs indicates a desync; however, a match does not prove that the demo ''did not'' desync. The statdump format only gives very general statistics about the completed levels (ie. information from the intermission screens). It is assumed that in the majority of cases, a desync will be significant enough that the player will not complete the level, or that the statistics will not match.
* Statistics are only gathered when the intermission screen is displayed; because of this, it is not possible to gather statistics from demos set on Doom II MAP30, or level 8 of any of the Doom I episodes.

== Configuring statcheck ==

Setting up statcheck is a fairly complicated process, so the following is an attempt to provide a guide for how to do this.

=== Downloading the Compet-N archive ===

The first step is to download a copy of the Compet-N archive. There is a downloadable copy of the archive [https://archive.org/details/competn available for download on the Internet Archive]. It is quite large (>100MB). Extract the file once downloaded.

=== Install prerequisites ===

You need to install python and wxPython. This will not be covered here.

=== Download statcheck ===

Use git to clone the statcheck repository:

 git clone https://github.com/chocolate-doom/statcheck.git

The repository is quite large, as it includes text files with the expected outputs for all of the Compet-N demo files.

=== Install all the needed WAD files ===

You need each of the four Doom commercial IWAD files (doom.wad, doom2.wad, tnt.wad, plutonia.wad). These can be purchased on Steam if you don't have them already.

You also need several PWAD files as there are Compet-N demos that use them:

* [https://www.doomworld.com/idgames/index.php?file=levels/doom2/megawads/av.zip Alien Vendetta] (av.wad)
* [https://www.doomworld.com/idgames/index.php?file=levels/doom/a-c/class_ep.zip Classic Episode] (Class_Ep.wad)
* [https://www.doomworld.com/idgames/index.php?file=themes/hr/hr.zip Hell Revealed] (hr.wad)
* [https://www.doomworld.com/idgames/index.php?file=themes/mm/mm_allup.zip Memento Mori] (mm.wad)
* [https://www.doomworld.com/idgames/index.php?file=themes/mm/mm2.zip Memento Mori II] (mm2.wad)
* [https://www.doomworld.com/idgames/index.php?file=levels/doom2/megawads/requiem.zip Requiem] (requiem.wad)

Place the extracted PWAD files in the same directory as the IWADs they correspond to.

=== Compile your own Chocolate Doom ===

Not documented here. See [[Development]] for links.

=== Configure statcheck ===

Edit statcheck's config.py and fill in the details that are missing:

* COMPETN_PATH needs to point to the root of your extracted Compet-N archive data.
* GAME_PATHS has an entry for each IWAD; these need to point to the directories containing the IWAD files.
* PORT_EXE should be the path to your compiled Chocolate Doom binary.
* CONCURRENT_PROCESSES specifies the number of Chocolate Doom instances to run in parallel. A good idea is to use twice the number of cores in your system. For example if you have a four core CPU, set this to 8.

=== Run statcheck ===

Type:

 python regression-test

If all is working as intended, you should start seeing the output from demos scroll by!


== External links ==

* [https://github.com/chocolate-doom/statcheck Statcheck on github]