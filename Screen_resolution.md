---
redirect_from:
 - /wiki/index.php/Screen_resolution
 - /wiki/index.php/Aspect_ratio
 - /Aspect_ratio.html
categories:
 - Features
---
{% image filename:"800x480.png" %}
Chocolate Doom as it would appear on the Asus Eee PC.
{% endimage %}

Chocolate Doom can be run in full screen or within a window. Internally and in common with vanilla, Chocolate Doom renders to a 320x200 buffer. This buffer is then scaled up to your display size or chosen window size using hardware acceleration.

## Fullscreen mode {#fullscreen_mode}

Chocolate Doom defaults to fullscreen. In contrast to earlier versions, from v3 onwards Chocolate Doom in fullscreen mode will not change your display\'s resolution.

In order to fit the 4:3 ratio picture within your display, it may be necessary to [windowbox](https://en.wikipedia.org/wiki/windowbox_(film)) or letterbox with a black border. Most modern displays are 16:9 or 16:10 ratio, meaning Chocolate Doom\'s image will be windowboxed.

## Windowed mode {#windowed_mode}

Chocolate Doom\'s video code supports an assortment of different window sizes (see below), and accurately preserves the original 4:3 aspect ratio of Doom on square pixel modes. Chocolate Doom\'s [Setup program](/Setup.md) can be used to change the resolution.

To set a specific mode from the command line, run Chocolate Doom with the *-width* and *-height* parameters:

    chocolate-doom -width 1280 -height 1024

It is also possible to use the *-geometry* parameter as a shortcut:

    chocolate-doom -geometry 1280x1024

The maximum supported screen resolution is 1600x1200. Only a fixed set of modes are supported, however; as a result, the screen may appear [windowboxed](https://en.wikipedia.org/wiki/windowbox_(film)) with a black border if there is not an exact scale factor for the chosen screen mode.

If an invalid mode is selected, Chocolate Doom automatically picks the closest valid mode. To disable this behavior, change `autoadjust_video_settings` in Chocolate Doom\'s configuration file to 0.

## External links {#external_links}

[Aspect ratio](https://doomwiki.org/wiki/Aspect_ratio) on the [Doom Wiki](https://doomwiki.org/wiki/Doom_Wiki).
