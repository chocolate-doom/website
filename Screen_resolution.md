[[Image:800x480.png|right|thumb|Chocolate Doom as it would appear on the Asus Eee PC.]]

Chocolate Doom's video code supports an assortment of different modes (see below), and accurately preserves the original 4:3 aspect ratio of Doom on square pixel modes. Chocolate Doom's [[Setup|Setup program]] can be used to change the resolution.

To set a specific mode from the command line, run Chocolate Doom with the ''-width'' and ''-height'' parameters:
 chocolate-doom -width 1280 -height 1024
It is also possible to use the ''-geometry'' parameter as a shortcut:
 chocolate-doom -geometry 1280x1024
The maximum supported screen resolution is 1600x1200. Only a fixed set of modes are supported, however; as a result, the screen may appear [[wikipedia:windowbox (film)|windowboxed]] with a black border if there is not an exact scale factor for the chosen screen mode.

If an invalid mode is selected, Chocolate Doom automatically picks the closest valid mode.  To disable this behavior, change <tt>autoadjust_video_settings</tt> in Chocolate Doom's configuration file to 0.

== Supported scale sizes ==

=== Uncorrected aspect ratio ===

These modes are used when the "aspect ratio correction" feature is turned off.  Scale-up is performed by exact pixel doubling, which is fast and accurate; however, in modern square pixel video modes, the game may appear "squashed".

{| {{prettytable}}
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

These modes are used when the "aspect ratio correction" option is turned on.  Scale-up is performed by scaling the screen up and performing vertical stretching of the screen; the game then appears correct when viewed in a square pixel video mode.  The disadvantages are that this may be slightly slower than the non-aspect ratio-corrected modes, and there may be slight blurring of the screen caused by anti-aliasing when performing the scale-up.

{| {{prettytable}}
 |-
 ! Scale size || Full-screen resolutions this provides support for
 |-
 | 256x200    ||
 |-
 | 320x240    || 320x240 (letterboxed)
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
[[doom:Aspect ratio|Aspect ratio]] on the [[doom:Doom Wiki|Doom Wiki]].

[[Category:Features]]