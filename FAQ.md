== Basics ==

=== What is Chocolate Doom? === 

Chocolate Doom is a [[doom:Source port|source port]] of the game [[wikipedia:Doom|Doom]], by Id software.  The purpose of Chocolate Doom is to be as compatible as possible with the original DOS version of Doom.

=== Why do we need yet another source port? ===

=== Where does the name come from? ===

The name "Chocolate Doom" is a word play on the term [[doom:Vanilla Doom|Vanilla Doom]], which is commonly used to refer to the original DOS Doom executables. 

It is also inspired by the [[wikipedia:GNU|GNU]] tradition of [[wikipedia:recursive acronym|recursive acronyms]]: GNU's Not Unix, but it behaves very similarly; Chocolate Doom is not Vanilla Doom, but it behaves similarly.

=== What is the legal status of Chocolate Doom? ===

Chocolate Doom is distributed under the [[wikipedia:GNU GPL|GNU General Public License]], version 2.  

It is derived directly from the original Doom source code published by Id Software; the [https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/ source code repository] contains the complete history of all of the changes that have been made, back to the original version.

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

=== How do I play fan-made levels (WADs) and other modifications? ===

== Problems ==

=== Where can I get help with using Chocolate Doom? ===

Several avenues of help are available:

* The easiest way to get help is to join the Chocolate Doom [[wikipedia:Internet Relay Chat|IRC]] channel.  Connect to ''irc.oftc.net'' and join ''#chocolate-doom''
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

=== How do I: look up and down, jump or crouch? ===

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

=== Why is there no music when playing under Mac OS X? ===

...