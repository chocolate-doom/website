[[Image:Chocolate-hexen.png|thumb|right|Chocolate Hexen, running from the raven-branch code.]]
[[Image:Chocolate-heretic.png|thumb|right|Chocolate Heretic, running from the raven-branch code.]]
'''raven-branch''' is a branch in the Chocolate Doom Subversion repository that is integrating the source code to the Raven games [[doom:Heretic|Heretic]] and [[doom:Hexen|Hexen]] into the Chocolate Doom code base.  The branch was started following the resolution of the [[doom:Raven source code licensing|source code licensing issue]] with the Raven code.

When the branch has completed, the changes will be merged back to the main trunk branch.  

=== Design ===

To support the games, radical restructuring of the Chocolate Doom source code has been necessary. The purpose of this is to separate the existing code into common and Doom-specific parts.  The Heretic and Hexen code can then be updated to interface with the common code. 

The approach taken by Chocolate Doom differs from the common approach taken by other ports to support Heretic and Hexen.  For example, [http://www.zdoom.org/ ZDoom] and [http://www.doomworld.com/eternity/ Eternity] have taken the approach of creating a combined engine that is generic enough to support all games. This approach reduces code duplication.  However, Chocolate Doom's goals are to preserve the behavior of the original games as closely as possible. To achieve this, the source code to the three games is maintained separately, depending only on some common code that is shared between them.  This approach results in duplicated code, with the advantage of avoiding large changes that might affect compatibility.

The portions of code that are common to the three games are currently:

* System-specific code (i_*):
:* ENDOOM support
:* Joystick
:* Low-level SDL video code (i_video.c) and scaling (i_scale.c)
:* Low-level sound effect and music code
:* Timer code (i_timer.c)
:* Endianness conversion (i_swap.h)
:New low-level code:
:* CD sound (i_cdmus.c) - for Hexen
:* Hexen startup video code (i_videohr.c)
* Basic event handling (d_event.c) and ticcmd definitions (d_ticcmd.h) - needed for networking.
* Entry point (i_main.c) and command line argument code (m_argv.c)
* Configuration file parsing
* Fixed point math functions (m_fixed.c)
* Network subsystem (net_*)
* Trigonometry lookup tables (tables.c)
* Video functions (drawing patches, etc) (v_video.c)
* WAD code (w_*)
* Zone memory subsystem (z_*)

In the future, additional code from the three code games may also be merged to the common code.

=== Current status ===

Both Heretic and Hexen are playable and the code base is mostly stable.  However, there are still various tasks that remain to be completed before the branch can be merged back to trunk. 

The definitive list of remaining tasks can be found in [https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/branches/raven-branch/HH-TODO the HH-TODO] file.  Some of the entries in this file are non-essential and may be completed at a later date (or not at all).  The main issues still remaining are:

* Multiplayer (netgame) support - the network code is currently disabled on raven-branch for all games.
* Updating of the setup tool (chocolate-setup) to fully support the new games.  The tool can now be used for basic configuration, but work is still needed on the multiplayer setup menus.
* Updating of the document generation script (docgen).
* Changes to the save game code to be compatible with the DOS versions.

== External links ==

* [http://chocolate-doom.svn.sourceforge.net/viewvc/chocolate-doom/branches/raven-branch/ raven-branch] source code.
* [http://people.oregonstate.edu/~delbelb/chocolate-raven-win32/ raven-branch] Win32 builds.

[[Category:Branches]]