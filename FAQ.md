== Basics ==

=== What is Chocolate Doom? === 

Chocolate Doom is a [[doom:Source port|source port]] of the game [[wikipedia:Doom|Doom]], by [[wikipedia:id Software|id Software]].  The purpose of Chocolate Doom is to be as compatible as possible with the original DOS version of Doom.

=== Where does the name come from? ===

The name "Chocolate Doom" is a word play on the term [[doom:Vanilla Doom|Vanilla Doom]], which is commonly used to refer to the original DOS Doom executables. 

It is also inspired by the [[wikipedia:GNU|GNU]] tradition of [[wikipedia:recursive acronym|recursive acronyms]]: for example, "GNU's Not Unix", but it behaves very similarly to Unix. Chocolate Doom "is not Vanilla Doom", but aims to behave similarly to Vanilla Doom.

=== Why do we need yet another source port? ===

Since the release of the Doom source code in 1998, a number of Doom [[doom:Source port|source ports]] have been created (there is a comprehensive list [https://www.doomworld.com/classicdoom/ports/ on Doomworld]).  Source port authors have worked to extend the Doom engine in impressive ways, and to fix bugs that limited the original DOS versions of Doom.  These developments have been important, arguably essential, in maintaining interest in the game, and to this day there remains a reasonably large [https://www.doomworld.com/vb/ community] of people who continue to create Doom levels and to play them.

However, there is a down side to this.  It is common for source port authors to make fixes and extensions at the expense of compatibility with the original DOS versions.  For example, one feature commonly lost is the ability to play back old demos.  In other cases, older fan-made modifications may not work properly.  Bug fixes and enhancements to the game engine can cause the gameplay to change in subtle ways or even make the game easier in some cases.

Over the years, the [https://www.doomworld.com/idgames/ /idgames archive] has collected thousands of fan-made modifications for Doom.  Many of these were created before the Doom source release.  Chocolate Doom as a history-preserving effort aims to maintain a minimalistic Doom source port that can allow these modifications to continue to be played.  This is particularly important as recent versions of Microsoft's Windows OS cannot run DOS Doom properly.

There are various other reasons why people use Chocolate Doom. There is still a thriving online Doom community and Chocolate Doom is useful for people developing Vanilla-compatible mods.  Some people find the minimalist philosophy of the project appealing.  The simplicity and [[portability]] of the source code make it an attractive choice for people porting Doom to new platforms.  Finally, the accuracy in recreating the look and feel of the original DOS versions can awaken nostalgia and memories of playing the original game.

=== What is the legal status of Chocolate Doom? ===

Chocolate Doom is distributed under the [[wikipedia:GNU GPL|GNU General Public License]], version 2.  

It is derived directly from the original Doom source code published by [[wikipedia:id Software|id Software]]; the [https://github.com/chocolate-doom/chocolate-doom source code repository] contains the complete history of all of the changes that have been made, back to the original version.

The source code to Heretic and Hexen was also made available under the GPL by Raven Software in 2008. This subsequently formed the basis for [[Chocolate Heretic]] and [[Chocolate Hexen]]. [[Chocolate Strife]] was developed based on reverse-engineering the original DOS Strife executables, but subsequently provided the basis for the commercial re-release, [[Strife: Veteran Edition]]. The GPL release of the code for Veteran Edition is interpreted as a legal blessing for the project.

== Using Chocolate Doom ==

=== What games can be played with Chocolate Doom? ===

The following games can be played:

* [[doom:Doom|Doom]] (including the shareware and registered versions, and the [[doom:Ultimate Doom|Ultimate Doom]] expansion pack)
* [[doom:Doom II|Doom II]]
* [[doom:Final Doom|Final Doom]] (TNT:Evilution, and the Plutonia Experiment)
* [[Chex Quest]]
* [[doom:Heretic|Heretic]]
* [[doom:Hexen|Hexen]]
* [[doom:Hexen: Deathkings of the Dark Citadel|Hexen: Deathkings of the Dark Citadel (expansion pack)]]
* [[doom:Strife|Strife]]

It is also possible to play these expansion packs and commercial games, each of which requires one of the above:

* [[doom:Master Levels for Doom II|The Master Levels for Doom II]]
* [[doom:Hacx|Hacx]]

=== Will Chocolate Doom run on my computer? ===

Unless your computer is either incredibly unusual or very old, the answer is almost certainly yes.  Chocolate Doom is based on the [http://www.libsdl.org/ LibSDL] multimedia library, making it portable to a wide variety of different operating systems. It has also been tested on several different processor architectures.  Check out the [[screenshots]] page for pictures of it running on various different systems.

See [[Portability]] for more information.

=== How do I set up Chocolate Doom on my computer? ===

There are two parts to the answer to this question:

# Firstly, you need a version of Chocolate Doom that you can run.  For Windows and Mac OS X, this is a matter of downloading a precompiled executable.  Use the download link on the left hand side of this page. <br> For other operating systems (Linux, BSD, etc.) it is usually necessary to compile a version from source, although a lot of systems now have precompiled packages.  Check out the "building" links on [[Development|the Development page]].
# Next, you need an '''IWAD''' file.  This is the file that contains all of the game data: graphics, sound effects, levels, etc.  This is usually a file named one of the following: ''doom.wad, doom2.wad, doom1.wad, tnt.wad, plutonia.wad''.  The IWAD file can usually be found on the CD-ROM containing the game; if you have the game in a different format (floppy disks, bought online, etc), you will have to install the game and try to find this file.

Having completed these two steps, running the game should simply be a matter of putting the two files in the same directory and running the executable.

=== I have multiple games (IWADs), how can I select something different than Doom II? ===

Generally, you can use the <tt>-iwad</tt> parameter to select a specific game, using the name of the IWAD.  You may set up an alias or script, depending on your operating system, so that you do not need to type out the -iwad parameter:

On a Unix-like operating system using bash you would add the following in your $HOME/.bashrc (not all shells are created equal!)
 alias chocolate-doom1="chocolate-doom -iwad doom.wad"
On Microsoft Windows, you could create a file named "Doom 1.cmd" (make sure your editor doesn't append a .txt to the end, or it will not work) with the contents:
 chocolate-doom -iwad doom.wad %*

=== How do I play fan-made levels (WADs) and other modifications? ===
For most levels, you simply need to use the <tt>-file level.wad</tt> command line parameter, however this is not always the case.  Most levels will come with an accompanying text file which will describe the intended usage.  Depending on the WAD, you may need to use options relating to [[Command line arguments#Dehacked and WAD merging|DeHackEd and WAD Merging]] features. In particular, if the WAD contains replacement sprites you may want to try using <tt>-merge</tt> instead of <tt>-file</tt>.

Some older WADs came in pre-compressed formats that may be difficult unpack on modern operating systems; in these cases, you may need to install them in [http://www.dosbox.com/ DOSBox] initially.  Feel free to [[#Where can I get help with using Chocolate Doom?|ask for help]] on the Chocolate Doom IRC or Doomworld forums if you can't figure it out!

=== Why do you not distribute Linux binaries? ===

The [[Downloads]] page has binary downloads for Windows and Mac OS X, but not Linux. There are many, many Linux distributions and it's hard to provide binaries that will work reliably over a majority of distributions; also, there is no standard package format through which to distribute them.

Instead for Linux we focus on getting Chocolate Doom into the package repositories for as many Linux distributions as possible (along with the various flavors of *BSD). See [[Installing Chocolate Doom on Linux]] for instructions for a number of different distributions. We also provide [[Building Chocolate Doom on Linux|build instructions]] for compiling Chocolate Doom from source.

== Problems ==

=== Where can I get help with using Chocolate Doom? ===

Several avenues of help are available:

* The easiest way to get help is to join the Chocolate Doom [[wikipedia:Internet Relay Chat|IRC]] channel.  Connect to the server ''irc.oftc.net'' using your favorite IRC client, and join ''#chocolate-doom''.
* The [https://www.doomworld.com/vb/ Doomworld forums] contain many knowledgeable people who may be able to answer your questions.  You will need to register an account in order to post.  There is a [https://www.doomworld.com/vb/source-ports/86366-chocolate-doom/ long-running thread] where questions can be asked and it is usually better to ask questions here rather than creating a new thread.
* Finally, it is possible to contact the developers of Chocolate Doom by sending an email to the development list: email ''chocolate-doom-dev-list@doomdoomdoom.chocolate-doom.org'', removing the "doomdoomdoom" part from that address.

=== When I set a high resolution screen mode (eg. 800x600), the screen still appears blocky.  Why is this? ===

Chocolate Doom supports using high resolution ''screen modes''.  However, the game itself is still rendered at the original 320x200 resolution used by the DOS executables.  This is then scaled up to fill the screen (or window). 

Many other source ports add "proper" high resolution support.  Chocolate Doom aims to behave and play the same as the original Doom executables.  This includes the screen resolution.

This does, of course, raise the question of why you would want to use a higher resolution mode in the first place, rather than just running in 320x200 in the first place.  There are several reasons:
* Some modern video cards no longer support 320x200 mode.
* Some video cards render 320x200 in "letterboxed" mode with square pixels; to display the screen properly, it is therefore necessary to use a higher resolution mode with [[aspect ratio]] correction.
* When running in a window, it is desirable to scale the screen up because a 320x200 window will appear tiny on a modern high resolution display.
* Modern LCD monitors perform antialiasing when scaling up lower resolution screen modes; this gives a "blurry" appearance to the screen, rather than the "blocky" appearance that a CRT monitor gives.

=== When playing in a full screen mode, why are there borders at the sides of the screen? ===

Vanilla Doom was developed to run on 4:3 CRT monitors used in the '90s, and Chocolate Doom reproduces this appearance. Since Doom's original release, most computers have changed to widescreen aspect ratios, which leads to leftover space at the sides of the screen.

It is usually possible to use the full screen space by turning off the [[Setup/Display configuration|"Fix aspect ratio" option]] in the setup tool. However, doing so will display all graphics at the wrong aspect ratio and give the game a "squashed" appearance, so is not recommended.

=== How do I look up and down, jump or crouch? ===

These things were not possible in the original Doom.  It is common for many other source ports to add the ability to look up and down or jump; however, Chocolate Doom aims to be as close to and as compatible with the original game as possible, so these features have not been added.

A good justification for this decision is that the game was not designed with these features in mind.  For example, the [[doom:Final boss|final boss battle in Doom II]] specifically relies on it being impossible to aim downwards.  Similarly, there are places in the game where the ability to jump allows various tricks that would not otherwise be possible and were never intended to be possible.

=== Why does the game crash just after the title screen appears? ===

A few seconds after showing the title screen, Doom starts playing the first demo. If you are using an old version of the Doom IWAD file, demo playback will fail and the game will exit with an error message like this:

 Error: Demo is from a different game version!
 (read 108, should be 109)
 
 *** You may need to upgrade your version of Doom to v1.9. ***
     See: https://doomworld.com/files/patches.shtml
     This appears to be v1.8.

There are several ways to solve this problem:
* If you are running with the shareware IWAD file, you can simply download the v1.9 IWAD file: the easiest way is to download the [https://www.doomworld.com/idgames/?id=7053 Windows port of Doom] and extract the file DOOM1.WAD.
* If you are using a commercial IWAD file, upgrading is more complicated. You need to use one of the [https://doomworld.com/files/patches.shtml official upgrade patches] to upgrade to v1.9 of Doom. The patch file you need depends on the version you currently have - the error message tells you what version you currently appear to be using.
* If all of this seems too complicated or too much effort, simply make sure you quickly start a game before the first demo starts. On most IWAD versions, the game will still play mostly correctly.

=== Why does the game crash when I access the options menu? ===

You probably have your mouse sensitivity set too high.  The Doom options menu has a slider that allows the mouse sensitivity to be controlled; however, it has only a very limited range.  It is common for experienced players to set a mouse sensitivity that is much higher than what can be set via the options menu.  The [[setup|setup program]] allows a larger range of values to be set.

However, setting very high sensitivity values causes the game to exit when accessing the options menu under Vanilla Doom.  Because Chocolate Doom aims to emulate Vanilla Doom as closely as possible, it does the same thing.

One solution to the problem is to set a lower mouse sensitivity.  Alternatively, all of the settings in the options menu can be controlled through Doom's key bindings anyway:

* End game: F7
* Messages on/off: F8
* Graphic detail high/low: F5
* Screen size smaller/larger: -/+
* Sound volume menu: F4

=== I have played Doom using other source ports.  Why does everything in Chocolate Doom appear to be vertically stretched? ===
Chocolate Doom by default preserves the original aspect ratio the game was intended to appear in, while some other ports ignore this detail.  See [[screen resolution]] and [[doom:aspect ratio|aspect ratio]] (Doom Wiki) for more information.

=== Can Chocolate Doom be run on Win95/98/Me? ===

No.

While unsupported, versions 2.2.1 and older might be capable of running, but these old operating systems are completely untested and any bugs encountered will not be fixed.  Original versions of Windows 95 also lack msvcrt.dll, but you may download it [ftp://ftp.microsoft.com/softlib/mslfiles/msvcrt.exe from the Microsoft FTP site].