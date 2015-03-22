[[Image:Mm-endoom.png|thumb|right|[[doom:ENDOOM|ENDOOM]] screen for [[doom:Memento Mori|Memento Mori]] displayed using libtextscreen.]]
'''libtextscreen''' is an internal library used in Chocolate Doom.  It simulates a DOS text mode display, and is used to display the [[doom:ENDOOM|ENDOOM]] screen when exiting the game (see [[Accurate ENDOOM emulation]])

Originally intended solely for this purpose, it has since been extended to include a small windowing toolkit that is used as the basis of the Chocolate Doom [[setup|setup program]].

== Base library ==

The basic part of the library simply emulates a DOS text mode display using [[wikipedia:LibSDL|LibSDL]].  It is contained in the file ''txt_sdl.c''.  The library accurately reproduces all of the characters in the DOS Extended ASCII range and also supports blinking text.

The library uses an 8x16 pixel font by default (giving a 640x480 pixel window), but on small screens, an alternative font is used based on the 
[http://hea-www.harvard.edu/~fine/Tech/x11fonts.html Atari-Small] font.  This alternative font uses characters in a 4x8 dimension (giving a 320x240 pixel window).  This feature is useful for low resolution devices such as palmtops.  A screenshot of the small font in use can be seen [[:Image:Atari-small.png|here]].

[[Image:Chocolate-doom-setup.png|thumb|right|The Chocolate Doom setup tool, demonstrating the textscreen widget toolkit.]]
[[Image:Windows-mobile-setup1.png|thumb|150px|right|Setup tool running on Windows Mobile, showing the alternative half-height font.]]
== GUI toolkit ==

The textscreen library includes a full text mode windowing toolkit, designed to appear similar in style to the Doom [[doom:Setup program|Setup program]].  The toolkit is used as the basis for Chocolate Doom's [[setup|setup program]].  The toolkit and base library are built as a single library, but there is no dependency of the base library on the higher level toolkit code.

The library is written in C, although with an "object oriented" style.  The API for the toolkit is inspired by the [http://www.gtk.org/ Gtk+] toolkit used for [http://www.gnome.org/ Gnome].  Windows can be opened and ''widgets'' packed into tables within the windows.  Many different comment widget types are supported, including:

* Buttons
* Check boxes
* Dropdown list boxes
* Input boxes for entering string and integer values
* Labels
* Radio buttons
* Scrollable panes
* Separators (used to divide a window into sections)
* Spin controls (to control integer and floating point values)
* Struts (used to add spacing to a window)

The library is event-based, and callbacks may be set to be invoked when particular actions occur (eg. a button is pressed).

At present, the windowing toolkit is only used for the setup program and for the multiplayer waiting screen.  It may be used for other purposes in the future.

== Further links ==

* [http://www.chocolate-doom.org/textscreen/ Doxygen-generated documentation for the textscreen library.]
* [[:Category:Textscreen screenshots]] and [[:Category:Setup tool screenshots]], showing the textscreen library in action.