Chocolate Doom supports the majority of Vanilla Doom's [[Doom:Command line arguments|command line arguments]].  However, several others have also been added:

; -gameversion <version> : Specifies a version of [[doom:Doom 1.9|Doom 1.9]] to emulate.  See [[Compatibility]].
;  -iwad <file> : Specifies an IWAD file to use.
;  -longtics :  When recording demos, records in the the modified [[Doom 1.91 demo format]] to avoid losing turning resolution.
;  -merge <file> : Loads a PWAD but simulates merging it into the main IWAD (see [[WAD merging capability]]).
;  -af <file> : Add flats from the given PWAD into the main IWAD directory, in the same way as [[doom:NWT|NWT]]'s "-af" command-line option (see [[WAD merging capability]]).
;  -as <file> : Add sprites from the given PWAD into the main IWAD directory, in the same way as [[doom:NWT|NWT]]'s "-as" command-line option (see [[WAD merging capability]]).
;  -aa <file> : Add sprites ''and'' flats from the given PWAD into the main IWAD directory (equivalent to <code>-af file -as file</code>).
; -deh <file>: Loads the specified file as a [[Dehacked]] file.
<!--
; -nwtmerge <file> : Add sprites from the given PWAD in the same way as NWT's "-merge" command-line option.

== Multiplayer ==

; -connect <address> : Connect to a server at the specified IP address.
; -server : Start a normal server, waiting for other players to connect.
; -port <n> : Listen on the given UDP port instead of the default (2342).  Only applies when running as a server.
; -dedicated : Start a dedicated server.
; -autojoin : Search a local LAN for a server and join automatically.
; -left : Connect as a drone showing a view 90 degrees to the left, for [[three screen mode]].
; -right : Connect as a drone showing a view 90 degrees to the right, for [[three screen mode]].
; -query <address> : Query the status of a server running on the given IP address.
; -search : Search the local LAN for servers.
-->
== Configuration file related ==

;  -extraconfig <file> : Specifies a [[Configuring|configuration file]] to use for Chocolate Doom-specific settings (the default is 'chocolate-doom.cfg')

The following override settings in the Chocolate Doom configuration file.  When the game quits, the configuration file will be written with the new settings.

; -1                  : Sets screenmultiply to 1
;  -2                  : Sets screenmultiply to 2, doubling up the screen by 2x.
;  -fullscreen         : Runs the game fullscreen.
;  -nofullscreen       : Runs the game in a window.
;  -window             : Runs the game in a window.
;  -grabmouse          : Grabs the mouse during play
;  -nograbmouse        : Does not grab the mouse during play
;  -novert             : Turns on novert
;  -nonovert           : Turns off novert

== See also ==
[http://www.chocolate-doom.org/CMDLINE Comprehensive list of Chocolate Doom command line arguments]