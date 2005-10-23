Chocolate Doom supports the majority of Vanilla Doom's [[Doom:Command line arguments|command line arguments]].  However, several others have also been added:

;  -iwad <file> : Specifies an IWAD file to use.
;  -longtics :  When recording demos, records in the the modified [[Doom 1.91 demo format]] to avoid losing turning resolution.
;  -merge <file> : Loads a PWAD but simulates merging it into the main IWAD (see [[WAD merging capability]]).
; -deh <file>: Loads the specified file as a [[Dehacked]] file.

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