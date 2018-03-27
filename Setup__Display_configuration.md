[[File:Setup_v3_configure_display.png|thumb|right|300px|Display Configuration]]
[[File:Setup v3 configure display windowed.png|thumb|right|300px|Selecting windowed modes]]

After selecting '''Configure Display''' from the main menu, another window opens that lets you configure some basic settings. The default is to run in fullscreen mode.

If you de-select fullscreen mode, size options for windowed mode appear. By default the sizes available are in the correct [[Wikipedia:Aspect ratio (image)#4:3 standard|4:3 aspect ratio]] .

== Advanced ==
[[File:Setup v3 configure display advanced.png|thumb|right|300px|Advanced options]]

''Advanced display options'' are also available.


=== Fix aspect ratio ===

Enabled by default, this option alters the window sizes that are available to you if fullscreen mode is disabled.

Doom renders to a 320x200 display buffer, but almost all monitors in the 1990s were of the 4:3 aspect ratio, so Chocolate Doom defaults to stretching the buffer to the correct aspect ratio. Turning this off will result in sizes with a wider aspect ratio which more closely matches modern displays. However, the image will appear to have been vertically squashed.

=== Show ENDOOM screen on exit ===

You may also toggle the display of [[Doom:ENDOOM|ENDOOM]] from this window. This is a screen that normally was displayed on DOS after quitting the game, and some WADs include their own replacement graphics for it. Chocolate Doom emulates this screen using [[libtextscreen]], the same text-mode emulation that the setup program itself uses.

=== Save screenshots in PNG format ===

On some operating systems and compilation configurations, there is a third option here, the capability of saving screenshots to [[Wikipedia:Portable Network Graphics|PNG]] files instead of the [[Wikipedia:PCX|PCX]] format that Doom originally used. The PCX format is largely obsolete and few applications implement support for it.

If aspect ratio correction and PNG screenshots are both enabled, the output screenshots will be scaled up to the correct aspect ratio by repeating pixels. Despite this, PNG screenshots are generally a smaller file size than PCX ones. PCX screenshots are always exactly 320x200 pixels in size and not aspect corrected.

[[Category:Setup tool]]