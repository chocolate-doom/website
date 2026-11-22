---
redirect_from:
 - /wiki/index.php/Textscreen
 - /wiki/index.php/Libtextscreen
 - /Libtextscreen.html
---
{% capture caption %}
[ENDOOM](https://doomwiki.org/wiki/ENDOOM) screen for [Memento Mori](https://doomwiki.org/wiki/Memento_Mori) displayed using libtextscreen.
{% endcapture %}
{% include Image.md caption=caption image="Mm-endoom.png" %}

**libtextscreen** is an internal library used in Chocolate Doom. It simulates a DOS text mode display, and is used to display the [ENDOOM](https://doomwiki.org/wiki/ENDOOM) screen when exiting the game (see [Accurate ENDOOM emulation](/Accurate_ENDOOM_emulation.md))

Originally intended solely for this purpose, it has since been extended to include a small windowing toolkit that is used as the basis of the Chocolate Doom [setup program](/Setup.md).

## Base library {#base_library}

The basic part of the library simply emulates a DOS text mode display using [LibSDL](https://en.wikipedia.org/wiki/LibSDL). It is contained in the file *txt_sdl.c*. The library accurately reproduces all of the characters in the DOS Extended ASCII range and also supports blinking text.

The library uses an 8x16 pixel font by default (giving a 640x480 pixel window), but on small screens, an alternative font is used based on the
[Atari-Small](http://hea-www.harvard.edu/~fine/Tech/x11fonts.html) font. This alternative font uses characters in a 4x8 dimension (giving a 320x240 pixel window). This feature is useful for low resolution devices such as palmtops. A screenshot of the small font in use can be seen [here](/Image:Atari-small.png.md).

{% capture caption %}
The Chocolate Doom setup tool, demonstrating the textscreen widget toolkit.
{% endcapture %}
{% include Image.md caption=caption image="Chocolate-doom-setup.png" %}
{% capture caption %}
Setup tool running on Windows Mobile, showing the alternative half-height font.
{% endcapture %}
{% include Image.md caption=caption image="Windows-mobile-setup1.png" width="150" %}

## GUI toolkit {#gui_toolkit}

The textscreen library includes a full text mode windowing toolkit, designed to appear similar in style to the Doom [Setup program](https://doomwiki.org/wiki/Setup_program). The toolkit is used as the basis for Chocolate Doom\'s [setup program](/Setup.md). The toolkit and base library are built as a single library, but there is no dependency of the base library on the higher level toolkit code.

The library is written in C, although with an \"object oriented\" style. The API for the toolkit is inspired by the [Gtk+](http://www.gtk.org/) toolkit used for [Gnome](http://www.gnome.org/). Windows can be opened and *widgets* packed into tables within the windows. Many different comment widget types are supported, including:

- Buttons
- Check boxes
- Dropdown list boxes
- Input boxes for entering string and integer values
- Labels
- Radio buttons
- Scrollable panes
- Separators (used to divide a window into sections)
- Spin controls (to control integer and floating point values)
- Struts (used to add spacing to a window)

The library is event-based, and callbacks may be set to be invoked when particular actions occur (eg. a button is pressed).

At present, the windowing toolkit is only used for the setup program and for the multiplayer waiting screen. It may be used for other purposes in the future.

## Further links {#further_links}

- [Doxygen-generated documentation for the textscreen library.](http://www.chocolate-doom.org/textscreen/)
- [:Category:Textscreen screenshots](/Category:Textscreen_screenshots.md) and [:Category:Setup tool screenshots](/Category:Setup_tool_screenshots.md), showing the textscreen library in action.
