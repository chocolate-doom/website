---
redirect_from:
 - /wiki/index.php/Config_secrets
---
{% image filename:"Chocolate_Doom_linear_filtering.png" %}
Chocolate Doom with linear screen filtering. Some people actually think this looks good, I guess??
{% endimage %}

To keep Chocolate Doom easy to configure, many of its more obscure configuration options are not shown in the setup tool. However, you can still access them by editing `chocolate-doom.cfg` manually. This page contains a list of some of these obscure options and what they do.

## Display options {#display_options}

### Fullscreen mode {#fullscreen_mode}

Normally the game runs at the desktop resolution so that the monitor does not change modes when switching to fullscreen. It can be forced to a particular resolution using the `fullscreen_width` / `fullscreen_height` variables. For example:

    fullscreen_width    1024
    fullscreen_height   768

### Window position {#window_position}

By default the game window appears in the center of the screen. This can be overridden to appear at a fixed location by setting the `window_position` variable. For example, to make the window appear at 100 pixels from the left edge and 50 pixels from the top:

    window_position    "100,50"

### Faster startup {#faster_startup}

When switching to full screen mode, Chocolate Doom by default waits for a second for the screen to settle before starting the game. This can be disabled by changing `startup_delay`, eg.

    startup_delay    0

Alternatively you can make it wait longer, eg.

    startup_delay    2000

### Force integer screen scaling {#force_integer_screen_scaling}

The screen can sometimes look a bit blurry when the game runs at a low resolution. This can be mitigated by setting `integer_scaling` to 1, which will force scaling to be an integer multiple in at least one dimension.

### Linear scaling {#linear_scaling}

Chocolate Doom goes to great lengths to preserve an accurate \"blocky\" screen scale-up, but there are a few people who prefer [linear screen scaling](/File:Chocolate_Doom_linear_filtering.png.md) instead. You can do this by setting `max_scaling_buffer_pixels` to 64000 (i.e., 320\*200):

    max_scaling_buffer_pixels    64000

### VGA porch emulation {#vga_porch_emulation}

The \"porch\" is the area of a CRT monitor that surrounds the main image. When DOS Doom is used with a CRT monitor, the porch area will flash and otherwise change in response to the game\'s palette changes. This can be emulated by setting the `vga_porch_flash` config variable:

    vga_porch_flash     1

### Loading disk icon {#loading_disk_icon}

The disk icon flashes at the bottom right when data is loaded from disk. To turn this off, set the `show_diskicon` config variable:

    show_diskicon    0

## Sound

### libsamplerate

### Custom music output {#custom_music_output}

The `snd_musiccmd` variable can be used to invoke an arbitrary command to play MIDI music. For example:

    snd_musiccmd    "aplaymidi -p 128:0"

### Emulating GUS cards {#emulating_gus_cards}

By default, Chocolate Doom\'s GUS emulation emulates a 1MiB GUS card. But it can be changed to emulate other memory sizes. For example, to emulate a 256KiB card instead:

    gus_ram_kb    256

## Konami code {#konami_code}

From the main menu in the setup tool, type the [Konami code](https://en.wikipedia.org/wiki/Konami_code) to get [Fraggle](https://doomwiki.org/wiki/Simon_Howard_(Fraggle))\'s preferred configuration defaults:

: `↑``↑``↓``↓``←``→``←``→``B``A``ENTER`

This corresponds to the following:

- WASD for movement
- Scroll wheel cycles weapons
- [PNG screenshots](/PNG_screenshots.md)
- Vanilla savegame and demo limits disabled
- [ENDOOM](/Accurate_ENDOOM_emulation.md) screen disabled and no graphical startup
- Adlib music in OPL3 mode
