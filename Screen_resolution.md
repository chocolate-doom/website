[[Image:800x480.png|right|thumb|Chocolate Doom as it would appear on the Asus Eee PC.]]
Chocolate Doom now has new screen resolution code, which can provide more modes (800x600 for example), and preserves the originally intended 4:3 screen resolution of Doom on other aspect ratios. It does this by [[wikipedia:letterbox|letter-]] or [[wikipedia:pillarbox|pillar-boxing]] the screen (sometimes both to result in what is known as [[wikipedia:windowbox (film)|windowboxing]]) and rendering a 4:3 image inside it. To use this, you must have a recent SVN copy of Chocolate Doom (r1006 or higher). To set a specific mode, run Chocolate Doom with the following command line:
 chocolate-doom -width 1280 -height 800
Note that -width and -height can be set to any value up to 1600 for width and 1200 for height - Chocolate Doom will automatically pick the closest supported value. Currently, [[setup|Chocolate Doom's setup utility]] can not be used to change the resolution. In addition to using the command line arguments, the resolution can also be changed by editing the width and height values in Chocolate Doom's configuration file (chocolate-doom.cfg).

To prevent Chocolate Doom from changing to the nearest screen filling resolution automatically, change <tt>autoadjust_video_settings</tt> in Chocolate Doom's configuration file to 0.

==External links==
[[doom:Aspect ratio|Aspect ratio]] on [http://doom.wikia.com/ Doom Wiki].

[[Category:Features]]