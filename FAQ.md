== Basics ==

=== What is Chocolate Doom? === 

Chocolate Doom is a [[doom:Source port|source port]] of the game [[wikipedia:Doom|Doom]], by [[wikipedia:id Software|id Software]].  The purpose of Chocolate Doom is to be as compatible as possible with the original DOS version of Doom.

=== Where does the name come from? ===

The name "Chocolate Doom" is a word play on the term [[doom:Vanilla Doom|Vanilla Doom]], which is commonly used to refer to the original DOS Doom executables. 

It is also inspired by the [[wikipedia:GNU|GNU]] tradition of [[wikipedia:recursive acronym|recursive acronyms]]: for example, "GNU's Not Unix", but it behaves very similarly to Unix. Chocolate Doom "is not Vanilla Doom", but aims to behave similarly to Vanilla Doom.

=== Why do we need yet another source port? ===

Since the release of the Doom source code in 1998, a number of Doom [[doom:Source port|source ports]] have been created (there is a comprehensive list [http://www.doomworld.com/classicdoom/ports/ on Doomworld]).  Source port authors have worked to extend the Doom engine in impressive ways, and to fix bugs that limited the original DOS versions of Doom.  These developments have been important, arguably essential, in maintaining interest in the game, and to this day there remains a reasonably large [http://www.doomworld.com/vb/ community] of people who continue to create Doom levels and to play them.

However, there is a down side to this.  It is common for source port authors to make fixes and extensions at the expense of compatibility with the original DOS versions.  For example, one feature commonly lost is the ability to play back old demos.  In other cases, older fan-made modifications may not work properly.  Bug fixes and enhancements to the game engine can cause the gameplay to change in subtle ways or even make the game easier in some cases.

Over the years, the [http://www.doomworld.com/idgames/ /idgames archive] has collected thousands of fan-made modifications for Doom.  Many of these were created before the Doom source release.  Chocolate Doom as a history-preserving effort aims to maintain a minimalistic Doom source port that can allow these modifications to continue to be played.  This is particularly important as recent versions of Microsoft's Windows OS cannot run Doom properly.

Although this is the main aim of the project, there are various other reasons why people use Chocolate Doom.  Some people find the minimalist philosophy of the project appealing.  The simplicity and [[portability]] of the source code make it an attractive choice for people porting Doom to new platforms.  Finally, the accuracy in recreating the look and feel of the original DOS versions can awaken nostalgia and memories of playing the original game.

=== What is the legal status of Chocolate Doom? ===

Chocolate Doom is distributed under the [[wikipedia:GNU GPL|GNU General Public License]], version 2.  

It is derived directly from the original Doom source code published by [[wikipedia:id Software|id Software]]; the [https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/ source code repository] contains the complete history of all of the changes that have been made, back to the original version.

The source code to Heretic and Hexen was also made available under the GPL by Raven Software in 2008.  Since then, work has been underway to integrate the Raven code into Chocolate Doom on the [[raven-branch]].

== Using Chocolate Doom ==

=== What games can be played with Chocolate Doom? ===

The following games can be played:

* Doom (including the shareware and registered versions, and the Ultimate Doom expansion pack)
* Doom II
* Final Doom (TNT:Evilution, and the Plutonia Experiment)
* [[Chex Quest]]

It is also possible to play these expansion packs and commercial games, each of which requires one of the above:

* The Master Levels for Doom II
* Hacx

Support for the following games is currently under development on the [[raven-branch]]:

* Heretic
* Hexen
* Hexen: Deathkings of the Dark Citadel (expansion pack)

=== Will Chocolate Doom run on my computer? ===

Unless your computer is either incredibly unusual or very old, the answer is almost certainly yes.  Chocolate Doom is based on the [http://www.libsdl.org/ LibSDL] multimedia library, making it portable to a wide variety of different operating systems. It has also been tested on several different processor architectures.  Check out the [[screenshots]] page for pictures of it running on various different systems.

=== How do I set up Chocolate Doom on my computer? ===

There are two parts to the answer to this question:

# Firstly, you need a version of Chocolate Doom that you can run.  On Windows, this is a matter of downloading a precompiled executable (.exe) file.  Use the download link on the left hand side of this page. <br> For other operating systems (Linux, Mac OS X, etc.) it is usually necessary to compile a version from source.  Check out the "building" links on [[Chocolate Doom|the front page]].
# Next, you need an '''IWAD''' file.  This is the file that contains all of the game data: graphics, sound effects, levels, etc.  This is usually a file named one of the following: ''doom.wad, doom2.wad, doom1.wad, tnt.wad, plutonia.wad''.  The IWAD file can usually be found on the CD-ROM containing the game; if you have the game in a different format (floppy disks, bought online, etc), you will have to install the game and try to find this file.

Having completed these two steps, running the game should simply be a matter of putting the two files in the same directory and running the executable.

=== I have multiple games (IWADs), how can I select something different than Doom II? ===

Generally, you can use the <tt>-iwad</tt> parameter to select a specific game, using the name of the IWAD.  You may setup an alias or script, depending on your operating system, so that you do not need to type out the -iwad parameter:

On a Unix-like operating system using bash you would add the following in your $HOME/.bashrc (not all shells are created equal!)
 alias chocolate-doom1="chocolate-doom -iwad doom.wad"
On Microsoft Windows, you could create a file named "Doom 1.cmd" (make sure your editor doesn't append a .txt to the end, or it will not work) with the contents:
 chocolate-doom -iwad doom.wad %*

=== How do I play fan-made levels (WADs) and other modifications? ===
For most levels, you simply need to use the <tt>-file level.wad</tt> command line parameter, however this is not always the case.  Most levels will come with an accompanying text file which will describe the intended usage.  Depending on the WAD, you may need to use options relating to [[Command line arguments#Dehacked and WAD merging|DeHackEd and WAD Merging]] features.  Additionally, some older WADs came in pre-compressed formats that may be difficult unpack on modern operating systems; in these cases, you may need to install them in [http://www.dosbox.com/ DOSBox] initially.  Feel free to [[#Where can I get help with using Chocolate Doom?|ask for help]] on the Chocolate Doom IRC or Doomworld forums if you can't figure it out!

== Problems ==

=== Where can I get help with using Chocolate Doom? ===

Several avenues of help are available:

* The easiest way to get help is to join the Chocolate Doom [[wikipedia:Internet Relay Chat|IRC]] channel.  Connect to the server ''irc.oftc.net'' using your favorite IRC client, and join ''#chocolate-doom''.
* The [http://www.doomworld.com/vb/ Doomworld forums] contain many knowledgeable people who may be able to answer your questions.  You will need to register an account in order to post.  It is best to use the [http://www.doomworld.com/vb/source-ports/ source ports] forum.  You may find a Chocolate Doom-related thread is already active; if so, please use this rather than creating a new thread.
* Finally, it is possible to contact the author of Chocolate Doom by sending an email to ''fraggle@doomdoomdoom.gmail.com'', removing the "doomdoomdoom" part from that address.

=== When I set a high resolution screen mode (eg. 800x600), the screen still appears blocky.  Why is this? ===

Chocolate Doom supports using high resolution ''screen modes''.  However, the game itself is still rendered at the original 320x200 resolution used by the DOS executables.  This is then scaled up to fill the screen (or window). 

Many other source ports add "proper" high resolution support.  Chocolate Doom aims to behave and play the same as the original Doom executables.  This includes the screen resolution.

This does, of course, raise the question of why you would want to use a higher resolution mode in the first place, rather than just running in 320x200 in the first place.  There are several reasons:
* Some modern video cards no longer support 320x200 mode.
* Some video cards render 320x200 in "letterboxed" mode with square pixels; to display the screen properly, it is therefore necessary to use a higher resolution mode with [[aspect ratio]] correction.
* When running in a window, it is desirable to scale the screen up because a 320x200 window will appear tiny on a modern high resolution display.
* Modern LCD monitors perform antialiasing when scaling up lower resolution screen modes; this gives a "blurry" appearance to the screen, rather than the "blocky" appearance that a CRT monitor gives.

=== When playing in a full screen mode, why is there a black border around the screen? ===

Chocolate Doom scales the screen in integer multiples, for example:

* 1x : 320x200,  320x240,  256x200
* 2x : 640x400,  640x480,  512x400
* 3x : 960x600,  960x720,  800x600
* 4x : 1280x800, 1280x960, 1024x800
: etc.

When running in a full screen video mode, the largest scale factor is picked that will fit within the screen.  For example, if running at 1024x768 resolution, a 3x scale will be chosen.  However, this gives a scaled screen size of only 960x720, which is less than the full screen resolution.  The result is a black border around the screen when playing in this mode.

This problem can be alleviated if necessary by choosing a different screen mode.  For example, 640x480 and 800x600 have scale factors that fit perfectly.  Similarly, for some modes, such as 1280x1024, the scale factor is not exact but the borders are small enough to be unnoticeable.

See [[Screen resolution]] for more information.

=== How do I look up and down, jump or crouch? ===

These things were not possible in the original Doom.  It is common for many other source ports to add the ability to look up and down or jump; however, Chocolate Doom aims to be as close to and as compatible with the original game as possible, so these features have not been added.

A good justification for this decision is that the game was not designed with these features in mind.  For example, the final boss battle in Doom II specifically relies on it being impossible to aim downwards.  Similarly, there are places in the game where the ability to jump allows various tricks that would not otherwise be possible and were never intended to be possible.

=== Why does the game crash when I access the options menu? ===

You probably have your mouse sensitivity set too high.  The Doom options menu has a slider that allows the mouse sensitivity to be controlled; however, it has only a very limited range.  It is common for experienced players to set a mouse sensitivity that is much higher than what can be set via the options menu.  The setup program allows a larger range of values to be set.

However, setting very high sensitivity values causes the game to exit when accessing the options menu under Vanilla Doom.  Because Chocolate Doom aims to emulate Vanilla Doom as closely as possible, it does the same thing.

One solution to the problem is to set a lower mouse sensitivity.  Alternatively, all of the settings in the options menu can be controlled through Doom's key bindings anyway:

* End game: F7
* Messages on/off: F8
* Graphic detail high/low: F5
* Screen size smaller/larger: -/+
* Sound volume menu: F4

=== I have played Doom using other source ports.  Why does everything in Chocolate Doom appear to be vertically stretched? ===
Chocolate Doom by default preserves the original aspect ratio the game was intended to appear in, while most other ports ignore this detail.  See [[screen resolution]] and [[doom:aspect ratio|aspect ratio]] (Doom Wiki) for more information.

=== Why does the music not repeat when playing under Mac OS X? ===

Normally, the MIDI music is supposed to loop while playing, so that when the track finishes, it begins again at the start of the track.  However, a [http://bugzilla.libsdl.org/show_bug.cgi?id=955 bug] in the OS X native MIDI code in SDL_mixer causes this not to happen.

=== Can Chocolate Doom be run on Win95/98/Me? ===

Yes.  However, very old versions of Windows may not include the MSVCRT.DLL, causing an error message similar to this:

  A required DLL file, MSVCRT.DLL, was not found.

This problem can be solved by downloading the DLL [ftp://ftp.microsoft.com/softlib/mslfiles/msvcrt.exe from the Microsoft FTP site].

=== Why does Plutonia 2 crash in MAP23 and during the first demo? ===

This is due to a mapping error in the level, causing the [[Doom:Medusa effect|Medusa effect]] which crashes Chocolate Doom. Two known workarounds for the problem are:
*Set <tt>snd_samplerate</tt> in <tt>chocolate-doom.cfg</tt> to a high value; 44100 works on most systems, but other higher and valid values such as 96000 can also be used.
*Alter the amount of memory Chocolate Doom uses by launching the game with the [[Doom:Parameter|parameter]] -mb, followed by the number of megabytes (lower values making the game less likely to crash). Values under 12 most commonly work.