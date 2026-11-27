---
redirect_from:
 - /wiki/index.php/FAQ
categories:
 - User_guide
---
## Basics

### What is Chocolate Doom? {#what_is_chocolate_doom}

Chocolate Doom is a [source port](https://doomwiki.org/wiki/Source_port) of the game [Doom](https://en.wikipedia.org/wiki/Doom), by [id Software](https://en.wikipedia.org/wiki/id_Software). The purpose of Chocolate Doom is to be as compatible as possible with the original DOS version of Doom.

### Where does the name come from? {#where_does_the_name_come_from}

The name \"Chocolate Doom\" is a word play on the term [Vanilla Doom](https://doomwiki.org/wiki/Vanilla_Doom), which is commonly used to refer to the original DOS Doom executables.

It is also inspired by the [GNU](https://en.wikipedia.org/wiki/GNU) tradition of [recursive acronyms](https://en.wikipedia.org/wiki/recursive_acronym): for example, \"GNU\'s Not Unix\", but it behaves very similarly to Unix. Chocolate Doom \"is not Vanilla Doom\", but aims to behave similarly to Vanilla Doom.

### Why do we need yet another source port? {#why_do_we_need_yet_another_source_port}

Since the release of the Doom source code in 1998, a number of Doom [source ports](https://doomwiki.org/wiki/Source_port) have been created (there is a comprehensive list [on Doomworld](https://www.doomworld.com/classicdoom/ports/)). Source port authors have worked to extend the Doom engine in impressive ways, and to fix bugs that limited the original DOS versions of Doom. These developments have been important, arguably essential, in maintaining interest in the game, and to this day there remains a reasonably large [community](https://www.doomworld.com/vb/) of people who continue to create Doom levels and to play them.

However, there is a down side to this. It is common for source port authors to make fixes and extensions at the expense of compatibility with the original DOS versions. For example, one feature commonly lost is the ability to play back old demos. In other cases, older fan-made modifications may not work properly. Bug fixes and enhancements to the game engine can cause the gameplay to change in subtle ways or even make the game easier in some cases.

Over the years, the [/idgames archive](https://www.doomworld.com/idgames/) has collected thousands of fan-made modifications for Doom. Many of these were created before the Doom source release. Chocolate Doom as a history-preserving effort aims to maintain a minimalistic Doom source port that can allow these modifications to continue to be played. This is particularly important as recent versions of Microsoft\'s Windows OS cannot run DOS Doom properly.

There are various other reasons why people use Chocolate Doom. There is still a thriving online Doom community and Chocolate Doom is useful for people developing Vanilla-compatible mods. Some people find the minimalist philosophy of the project appealing. The simplicity and [portability](/Portability.md) of the source code make it an attractive choice for people porting Doom to new platforms. Finally, the accuracy in recreating the look and feel of the original DOS versions can awaken nostalgia and memories of playing the original game.

### What is the legal status of Chocolate Doom? {#what_is_the_legal_status_of_chocolate_doom}

Chocolate Doom is distributed under the [GNU General Public License](https://en.wikipedia.org/wiki/GNU_GPL), version 2.

It is derived directly from the original Doom source code published by [id Software](https://en.wikipedia.org/wiki/id_Software); the [source code repository](https://github.com/chocolate-doom/chocolate-doom) contains the complete history of all of the changes that have been made, back to the original version.

The source code to Heretic and Hexen was also made available under the GPL by Raven Software in 2008. This subsequently formed the basis for [Chocolate Heretic](/Chocolate_Heretic.md) and [Chocolate Hexen](/Chocolate_Hexen.md). [Chocolate Strife](/Chocolate_Strife.md) was developed based on reverse-engineering the original DOS Strife executables, but subsequently provided the basis for the commercial re-release, [Strife: Veteran Edition](/Strife:_Veteran_Edition.md). The GPL release of the code for Veteran Edition is interpreted as a legal blessing for the project.

## Using Chocolate Doom {#using_chocolate_doom}

### What games can be played with Chocolate Doom? {#what_games_can_be_played_with_chocolate_doom}

The following games can be played:

- [Doom](https://doomwiki.org/wiki/Doom) (including the shareware and registered versions, and the [Ultimate Doom](https://doomwiki.org/wiki/Ultimate_Doom) expansion pack)
- [Doom II](https://doomwiki.org/wiki/Doom_II)
- [Final Doom](https://doomwiki.org/wiki/Final_Doom) (TNT: Evilution and the Plutonia Experiment)
- [Chex Quest](/Chex_Quest.md)
- [Heretic](https://doomwiki.org/wiki/Heretic)
- [Hexen](https://doomwiki.org/wiki/Hexen)
- [Hexen: Deathkings of the Dark Citadel (expansion pack)](https://doomwiki.org/wiki/Hexen:_Deathkings_of_the_Dark_Citadel)
- [Strife](https://doomwiki.org/wiki/Strife)

It is also possible to play these expansion packs and commercial games, each of which requires one of the above:

- [The Master Levels for Doom II](https://doomwiki.org/wiki/Master_Levels_for_Doom_II)
- [Hacx](https://doomwiki.org/wiki/Hacx)

### Will Chocolate Doom run on my computer? {#will_chocolate_doom_run_on_my_computer}

Unless your computer is either incredibly unusual or very old, the answer is almost certainly yes. Chocolate Doom is based on the [LibSDL](http://www.libsdl.org/) multimedia library, making it portable to a wide variety of different operating systems. It has also been tested on several different processor architectures. Check out the [screenshots](/Screenshots.md) page for pictures of it running on various different systems.

See [Portability](/Portability.md) for more information.

### How do I set up Chocolate Doom on my computer? {#how_do_i_set_up_chocolate_doom_on_my_computer}

There are two parts to the answer to this question:

1.  Firstly, you need a version of Chocolate Doom that you can run. For Windows and Mac OS X, this is a matter of downloading a precompiled executable. Use the download link on the left hand side of this page.\
    For other operating systems (Linux, BSD, etc.) it is usually necessary to compile a version from source, although a lot of systems now have precompiled packages. Check out the \"building\" links on [the Development page](/Development.md).
2.  Next, you need an **IWAD** file. This is the file that contains all of the game data: graphics, sound effects, levels, etc. This is usually a file named one of the following: *doom.wad, doom2.wad, doom1.wad, tnt.wad, plutonia.wad*. The IWAD file can usually be found on the CD-ROM containing the game; if you have the game in a different format (floppy disks, bought online, etc), you will have to install the game and try to find this file.

Having completed these two steps, running the game should simply be a matter of putting the two files in the same directory and running the executable.

### I have multiple games (IWADs), how can I select something different than Doom II? {#i_have_multiple_games_iwads_how_can_i_select_something_different_than_doom_ii}

If you\'re using Windows, put a copy of Chocolate Doom in the same folder as an IWAD file and it will launch that IWAD.

More generally, you can use the `-iwad` parameter to select a specific game, using the name of the IWAD. You may set up an alias or script, depending on your operating system, so that you do not need to type out the -iwad parameter:

On a Unix-like operating system using bash you would add the following in your \$HOME/.bashrc (not all shells are created equal!)

    alias chocolate-doom1="chocolate-doom -iwad doom.wad"

On Microsoft Windows, you could create a file named \"Doom 1.cmd\" (make sure your editor doesn\'t append a .txt to the end, or it will not work) with the contents:

    chocolate-doom -iwad doom.wad %*

### How do I play fan-made levels (WADs) and other modifications? {#how_do_i_play_fan_made_levels_wads_and_other_modifications}

For most levels, you simply need to use the `-file level.wad` command line parameter, however this is not always the case. Most levels will come with an accompanying text file which will describe the intended usage. Depending on the WAD, you may need to use options relating to [DeHackEd and WAD Merging](/Command_line_arguments.md#Dehacked_and_WAD_merging) features. In particular, if the WAD contains replacement sprites you may want to try using `-merge` instead of `-file`.

Some older WADs came in pre-compressed formats that may be difficult unpack on modern operating systems; in these cases, you may need to install them in [DOSBox](http://www.dosbox.com/) initially. Feel free to [ask for help](/.md#Where_can_I_get_help_with_using_Chocolate_Doom?) on the Chocolate Doom Discord or Doomworld forums if you can\'t figure it out!

### Why do you not distribute Linux binaries? {#why_do_you_not_distribute_linux_binaries}

The [Downloads](/Downloads.md) page has binary downloads for Windows and Mac OS X, but not Linux. There are many, many Linux distributions and it\'s hard to provide binaries that will work reliably over a majority of distributions; also, there is no standard package format through which to distribute them.

Instead for Linux we focus on getting Chocolate Doom into the package repositories for as many Linux distributions as possible (along with the various flavors of \*BSD). See [Installing Chocolate Doom on Linux](/Installing_Chocolate_Doom_on_Linux.md) for instructions for a number of different distributions. We also provide [build instructions](/Building_Chocolate_Doom_on_Linux.md) for compiling Chocolate Doom from source.

### How do I launch Chocolate Doom from Steam? {#how_do_i_launch_chocolate_doom_from_steam}

From the \"Games\" menu, choose the item listed as \"Add a Non-Steam Game to My Library\...\" and choose the path to launch Chocolate Doom. If you\'re using Windows, you can add multiple such entries for each IWAD file; choose properties and change \"Start In\" to the directory where each IWAD file is found.

NOTE: Some third party \"guides\" suggest changing the Steam installation of Doom to hook in Chocolate Doom by replacing the `dosbox.exe` file. Please don\'t do this; it\'s considered a gross hack and is not recommended or supported by Chocolate Doom\'s authors. In particular, you\'re likely to experience several different bugs as a result of using this hack.

## Problems

### Where can I get help with using Chocolate Doom? {#where_can_i_get_help_with_using_chocolate_doom}

Several avenues of help are available:

- The easiest way to get help is to join the [Chocolate Doom Discord guild](https://discord.gg/fsVZfEE)
- The [Doomworld forums](https://www.doomworld.com/vb/) contain many knowledgeable people who may be able to answer your questions. You will need to register an account in order to post. There is a [long-running thread](https://www.doomworld.com/vb/source-ports/86366-chocolate-doom/) where questions can be asked and it is usually better to ask questions here rather than creating a new thread.
- Finally, it is possible to contact the developers of Chocolate Doom by sending an email to the development list: email *chocolate-doom-dev-list@doomdoomdoom.chocolate-doom.org*, removing the \"doomdoomdoom\" part from that address.

### When I set a high resolution screen mode (eg. 800x600), the screen still appears blocky. Why is this? {#when_i_set_a_high_resolution_screen_mode_eg._800x600_the_screen_still_appears_blocky._why_is_this}

Chocolate Doom supports using high resolution *screen modes*. However, the game itself is still rendered at the original 320x200 resolution used by the DOS executables. This is then scaled up to fill the screen (or window).

Many other source ports add \"proper\" high resolution support. Chocolate Doom aims to behave and play the same as the original Doom executables. This includes the screen resolution.

This does, of course, raise the question of why you would want to use a higher resolution mode in the first place, rather than just running in 320x200 in the first place. There are several reasons:

- Some modern video cards no longer support 320x200 mode.
- Some video cards render 320x200 in \"letterboxed\" mode with square pixels; to display the screen properly, it is therefore necessary to use a higher resolution mode with [aspect ratio](/Screen_resolution.md) correction.
- When running in a window, it is desirable to scale the screen up because a 320x200 window will appear tiny on a modern high resolution display.
- Modern LCD monitors perform antialiasing when scaling up lower resolution screen modes; this gives a \"blurry\" appearance to the screen, rather than the \"blocky\" appearance that a CRT monitor gives.

### When playing in a full screen mode, why are there borders at the sides of the screen? {#when_playing_in_a_full_screen_mode_why_are_there_borders_at_the_sides_of_the_screen}

Vanilla Doom was developed to run on 4:3 CRT monitors used in the \'90s, and Chocolate Doom reproduces this appearance. Since Doom\'s original release, most computers have changed to widescreen aspect ratios, which leads to leftover space at the sides of the screen.

It is usually possible to use the full screen space by turning off the [\"Fix aspect ratio\" option](/Setup__Display_configuration.md) in the setup tool. However, doing so will display all graphics at the wrong aspect ratio and give the game a \"squashed\" appearance, so is not recommended.

### How do I look up and down, jump or crouch? {#how_do_i_look_up_and_down_jump_or_crouch}

These things were not possible in the original Doom. It is common for many other source ports to add the ability to look up and down or jump; however, Chocolate Doom aims to be as close to and as compatible with the original game as possible, so these features have not been added.

A good justification for this decision is that the game was not designed with these features in mind. For example, the [final boss battle in Doom II](https://doomwiki.org/wiki/Final_boss) specifically relies on it being impossible to aim downwards. Similarly, there are places in the game where the ability to jump allows various tricks that would not otherwise be possible and were never intended to be possible.

### Why does the game crash just after the title screen appears? {#why_does_the_game_crash_just_after_the_title_screen_appears}

A few seconds after showing the title screen, Doom starts playing the first demo. If you are using an old version of the Doom IWAD file, demo playback will fail and the game will exit with an error message like this:

    Error: Demo is from a different game version!
    (read 108, should be 109)

    *** You may need to upgrade your version of Doom to v1.9. ***
        See: https://doomworld.com/files/patches.shtml
        This appears to be v1.8.

There are several ways to solve this problem:

- If you are running with the shareware IWAD file, you can simply download the v1.9 IWAD file: the easiest way is to download the [Windows port of Doom](https://www.doomworld.com/idgames/?id=7053) and extract the file DOOM1.WAD.
- If you are using a commercial IWAD file, upgrading is more complicated. You need to use one of the [official upgrade patches](https://doomworld.com/files/patches.shtml) to upgrade to v1.9 of Doom. The patch file you need depends on the version you currently have - the error message tells you what version you currently appear to be using.
- If all of this seems too complicated or too much effort, simply make sure you quickly start a game before the first demo starts. On most IWAD versions, the game will still play mostly correctly.

### Why does the game crash when I access the options menu? {#why_does_the_game_crash_when_i_access_the_options_menu}

You probably have your mouse sensitivity set too high. The Doom options menu has a slider that allows the mouse sensitivity to be controlled; however, it has only a very limited range. It is common for experienced players to set a mouse sensitivity that is much higher than what can be set via the options menu. The [setup program](/Setup.md) allows a larger range of values to be set.

However, setting very high sensitivity values causes the game to exit when accessing the options menu under Vanilla Doom. Because Chocolate Doom aims to emulate Vanilla Doom as closely as possible, it does the same thing.

One solution to the problem is to set a lower mouse sensitivity. Alternatively, all of the settings in the options menu can be controlled through Doom\'s key bindings anyway:

- End game: F7
- Messages on/off: F8
- Graphic detail high/low: F5
- Screen size smaller/larger: -/+
- Sound volume menu: F4

### I have played Doom using other source ports. Why does everything in Chocolate Doom appear to be vertically stretched? {#i_have_played_doom_using_other_source_ports._why_does_everything_in_chocolate_doom_appear_to_be_vertically_stretched}

Chocolate Doom by default preserves the original aspect ratio the game was intended to appear in, while some other ports ignore this detail. See [screen resolution](/Screen_resolution.md) and [aspect ratio](https://doomwiki.org/wiki/aspect_ratio) (Doom Wiki) for more information.

### Can Chocolate Doom be run on Win95/98/Me? {#can_chocolate_doom_be_run_on_win9598me}

No.

While unsupported, versions 2.2.1 and older might be capable of running, but these old operating systems are completely untested and any bugs encountered will not be fixed. Original versions of Windows 95 also lack msvcrt.dll, but you may download it [from the Microsoft FTP site](ftp://ftp.microsoft.com/softlib/mslfiles/msvcrt.exe).
