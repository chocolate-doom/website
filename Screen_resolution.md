[[Image:800x480.png|right|thumb|Chocolate Doom as it would appear on the Asus Eee PC.]]
Chocolate Doom now has new screen resolution code, which can provide more modes (800x600 for example), and preserves the originally intended 4:3 screen resolution of Doom on other aspect ratios. It does this by [[wikipedia:letterbox|letter-]] or [[wikipedia:pillarbox|pillar-boxing]] the screen (sometimes both to result in what is known as [[wikipedia:windowbox (film)|windowboxing]]) and rendering a 4:3 image inside it. To use this, you must have a recent SVN copy of Chocolate Doom (r1006 or higher). To set a specific mode, run Chocolate Doom with the following command line:
 chocolate-doom -width 1280 -height 800
Note that -width and -height can be set to any value up to 1600 for width and 1200 for height - Chocolate Doom will automatically pick the closest supported value. Currently, [[setup|Chocolate Doom's setup utility]] can not be used to change the resolution. In addition to using the command line arguments, the resolution can also be changed by editing the width and height values in Chocolate Doom's configuration file (chocolate-doom.cfg).

To prevent Chocolate Doom from changing to the nearest screen filling resolution automatically, change <tt>autoadjust_video_settings</tt> in Chocolate Doom's configuration file to 0.

== Supported scale sizes ==

=== Uncorrected aspect ratio ===

These modes are used when the "aspect ratio correction" option is turned off.  Scaleup is performed by exact pixel doubling, which is fast and accurate; however, in modern square pixel video modes, the game may appear "squashed".

{| {{prettytable}
 |-
 ! Scale size || Full-screen resolutions this provides support for
 |-
 | 320x200    || 320x200, 320x240 (letterboxed)
 |-
 | 640x400    || 640x400, 640x480 (letterboxed)
 |-
 | 960x600    || 1024x768 (letterboxed)
 |-
 | 1280x800   || 1280x800 (widescreen), 1280x1024 (letterboxed)
 |-
 | 1600x1000  || 1600x1200 (letterboxed), 1080p
 |-
 |}

=== Aspect ratio corrected ===

These modes are used when the "aspect ratio correction" option is turned on.  Scaleup is performed by scaling the screen up and performing vertical stretching of the screen; the game then appears correct when viewed in a square pixel video mode.  The disadvantages are that this may be slightly slower than the non-aspect ratio-corrected modes, and there may be slight blurring of the screen caused by antialiasing when performing the scaleup.

{| {{prettytable}
 |-
 ! Scale size || Full-screen resolutions this provides support for
 |-
 | 256x200    ||
 |-
 | 320x240    || 320x200, 320x240 (letterboxed)
 |-
 | 512x400    ||
 |-
 | 640x480    || 640x480, 480p
 |-
 | 800x600    || 800x600
 |-
 | 960x720    || 1024x768 (letterboxed), 720p
 |-
 | 1024x800   || 1280x800 (widescreen, pillarboxed)
 |-
 | 1280x960   || 1280x1024, 1080p (letterboxed)
 |-
 | 1280x1000  || 1280x1024, 1080p (letterboxed)
 |-
 | 1600x1200  || 1600x1200 
 |-
 |}

==External links==
[[doom:Aspect ratio|Aspect ratio]] on [http://doom.wikia.com/ Doom Wiki].

[[Category:Features]]