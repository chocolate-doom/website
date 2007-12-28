ctaacelrac
Chocolate Doom supports the majority of Vanilla Doom's [[Doom:Command line arguments|command line arguments]].  However, several others have also been added:
=== General options ===
; -extraconfig &lt;file&gt;: Load extra [[configuration]] from the specified file, instead of chocolate-doom.cfg. 
; -iwad &lt;file&gt;: Specify an IWAD file to use. 
; -mb &lt;mb&gt;: Specify the heap size, in MiB (default 16). 

=== Compatibility ===
; -gameversion &lt;version&gt;: Emulate a specific version of Doom.  Valid values are "1.9", "ultimate" and "final". 
; -spechit &lt;n&gt;: Use the specified magic value when emulating spechit overruns. 

=== Demo options ===
; -longtics: Record a high resolution "[[Doom 1.91]]" demo. 
; -netdemo: Play back a demo recorded in a netgame with a single player. 

=== Display options ===
; -1: Don't scale up the screen. 
; -2: Double up the screen to 2x its size. 
; -3: Double up the screen to 3x its size. 
; -4: Double up the screen to 4x its size. 
; -5: Double up the screen to 5x its size. 
; -fullscreen: Run in fullscreen mode. 
; -gdi: Use the Windows GDI driver instead of DirectX. '''(windows only)'''
; -grabmouse: Grab the mouse when running in windowed mode. 
; -nograbmouse: Don't grab the mouse when running in windowed mode. 
; -nomouse: Disable the mouse. 
; -nonovert: Enable vertical mouse movement. 
; -novert: Disable vertical mouse movement. 
; -window: Run in a window. 

=== Networking options ===
; -autojoin: Automatically search the local LAN for a [[multiplayer]] server and join it. 
; -connect &lt;address&gt;: Connect to a [[multiplayer]] server running on the given address. 
; -dedicated: Start a dedicated server, routing packets but not participating in the game itself. 
; -dup &lt;n&gt;: Reduce the resolution of the game by a factor of n, reducing the amount of network bandwidth needed. 
; -extratics &lt;n&gt;: Send n extra tics in every packet as insurance against dropped packets. 
; -left: Run as the left screen in [[three screen mode]]. 
; -oldsync: Use original game sync code. 
; -port &lt;n&gt;: Use the specified UDP port for communications, instead of the default (2342). 
; -query &lt;address&gt;: Query the status of the server running on the given IP address. 
; -right: Run as the right screen in [[three screen mode]]. 
; -search: Search the local LAN for running servers. 
; -server: Start a [[multiplayer]] server, listening for connections. 

=== Dehacked and WAD merging ===
; -aa &lt;files&gt;: Equivalent to "-af &lt;files&gt; -as &lt;files&gt;". 
; -af &lt;files&gt;: Simulates the behavior of NWT's -af option, [[merging]] flats into the main IWAD directory.  Multiple files may be specified. 
; -as &lt;files&gt;: Simulates the behavior of NWT's -as option, [[merging]] sprites into the main IWAD directory.  Multiple files may be specified. 
; -deh &lt;files&gt;: Load the given [[dehacked]] patch(es) 
; -merge &lt;files&gt;: Simulates the behavior of deutex's -merge option, [[merging]] a PWAD into the main IWAD.  Multiple files may be specified. 
; -nwtmerge &lt;files&gt;: Simulates the behavior of NWT's -merge option.  Multiple files may be specified.