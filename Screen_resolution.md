[[Image:800x480.png|right|thumb|Chocolate Doom as it would appear on the Asus Eee PC.]]

Chocolate Doom can be run in full screen or within a window. Internally and in common with vanilla, Chocolate Doom renders to a 320x200 buffer. This buffer is then scaled up to your display size or chosen window size using hardware acceleration.

== Fullscreen mode ==

Chocolate Doom defaults to fullscreen. In contrast to earlier versions, from v3 onwards Chocolate Doom in fullscreen mode will not change your display's resolution.

In order to fit the 4:3 ratio picture within your display, it may be necessary to [[wikipedia:windowbox (film)|windowbox]] or letterbox with a black border. Most modern displays are 16:9 or 16:10 ratio, meaning Chocolate Doom's image will be windowboxed.

== Windowed mode ==

Chocolate Doom's video code supports an assortment of different window sizes (see below), and accurately preserves the original 4:3 aspect ratio of Doom on square pixel modes. Chocolate Doom's [[Setup|Setup program]] can be used to change the resolution.

To set a specific mode from the command line, run Chocolate Doom with the ''-width'' and ''-height'' parameters:
 chocolate-doom -width 1280 -height 1024
It is also possible to use the ''-geometry'' parameter as a shortcut:
 chocolate-doom -geometry 1280x1024
The maximum supported screen resolution is 1600x1200. Only a fixed set of modes are supported, however; as a result, the screen may appear [[wikipedia:windowbox (film)|windowboxed]] with a black border if there is not an exact scale factor for the chosen screen mode.

If an invalid mode is selected, Chocolate Doom automatically picks the closest valid mode.  To disable this behavior, change <tt>autoadjust_video_settings</tt> in Chocolate Doom's configuration file to 0.

=== Supported scale sizes ===

==== Aspect ratio corrected ====

These modes are used when the "aspect ratio correction" option is turned on (the default).

{| {{prettytable}}
 |-
 ! Scale size
 |-
 | 320x240
 |-
 | 512x400
 |-
 | 640x480
 |-
 | 800x600
 |-
 | 960x720
 |-
 | 1024x800
 |-
 | 1280x960
 |-
 | 1600x1200
 |-
 | 1920x1440
 |-
 |}

==== Uncorrected aspect ratio ====

These modes are used when the "aspect ratio correction" feature is turned off.  Scale-up is performed by exact pixel doubling, which is fast and accurate; however, the game will appear "squashed".

{| {{prettytable}}
 |-
 ! Scale size
 |-
 | 320x200
 |-
 | 640x400
 |-
 | 960x600
 |-
 | 1280x800
 |-
 | 1600x1000
 |}

==External links==
[[doom:Aspect ratio|Aspect ratio]] on the [[doom:Doom Wiki|Doom Wiki]].

[[Category:Features]]