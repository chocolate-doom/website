---
redirect_from:
 - /wiki/index.php/Setup/Display_configuration
 - /setup-display
categories:
 - Setup_tool
---
{% capture caption %}
Display Configuration
{% endcapture %}
{% include Image.md caption=caption image="Setup_v3_configure_display.png" width="300" %}
{% capture caption %}
Selecting windowed modes
{% endcapture %}
{% include Image.md caption=caption image="Setup_v3_configure_display_windowed.png" width="300" %}

After selecting **Configure Display** from the main menu, another window opens that lets you configure some basic settings. The default is to run in fullscreen mode.

If you de-select fullscreen mode, size options for windowed mode appear. By default the sizes available are in the correct [4:3 aspect ratio](https://en.wikipedia.org/wiki/Aspect_ratio_(image)#4:3_standard) .

## Advanced

{% capture caption %}
Advanced options
{% endcapture %}
{% include Image.md caption=caption image="Setup_v3_configure_display_advanced.png" width="300" %}

*Advanced display options* are also available.

### Fix aspect ratio {#fix_aspect_ratio}

Enabled by default, this option alters the window sizes that are available to you if fullscreen mode is disabled.

Doom renders to a 320x200 display buffer, but almost all monitors in the 1990s were of the 4:3 aspect ratio, so Chocolate Doom defaults to stretching the buffer to the correct aspect ratio. Turning this off will result in sizes with a wider aspect ratio which more closely matches modern displays. However, the image will appear to have been vertically squashed.

### Show ENDOOM screen on exit {#show_endoom_screen_on_exit}

You may also toggle the display of [ENDOOM](https://doomwiki.org/wiki/ENDOOM) from this window. This is a screen that normally was displayed on DOS after quitting the game, and some WADs include their own replacement graphics for it. Chocolate Doom emulates this screen using [libtextscreen](/Libtextscreen.md), the same text-mode emulation that the setup program itself uses.

### Save screenshots in PNG format {#save_screenshots_in_png_format}

On some operating systems and compilation configurations, there is a third option here, the capability of saving screenshots to [PNG](https://en.wikipedia.org/wiki/Portable_Network_Graphics) files instead of the [PCX](https://en.wikipedia.org/wiki/PCX) format that Doom originally used. The PCX format is largely obsolete and few applications implement support for it.

If aspect ratio correction and PNG screenshots are both enabled, the output screenshots will be scaled up to the correct aspect ratio by repeating pixels. Despite this, PNG screenshots are generally a smaller file size than PCX ones. PCX screenshots are always exactly 320x200 pixels in size and not aspect corrected.
