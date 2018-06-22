To keep Chocolate Doom easy to configure, many of its more obscure configuration options are not shown in the setup tool. However, you can still access them by editing `chocolate-doom.cfg` manually. This page contains a list of some of these obscure options and what they do.

== Display options ==

=== Fullscreen mode ===

Normally the game runs at the desktop resolution so that the monitor does not change modes when switching to fullscreen. It can be forced to a particular resolution using the `fullscreen_width` / `fullscreen_height` variables. For example:

    fullscreen_width    1024
    fullscreen_height   768

=== Window position ===

By default the game window appears in the center of the screen. This can be overridden to appear at a fixed location by setting the `window_position` variable. For example, to make the window appear at 100 pixels from the left edge and 50 pixels from the top:

    window_position    "100,50"

=== Force integer screen scaling ===

The screen can sometimes look a bit blurry when the game runs at a low resolution. This can be mitigated by setting `integer_scaling` to 1, which will force scaling to be an integer multiple in at least one dimension.

=== Linear scaling ===

Chocolate Doom goes to great lengths to preserve an accurate "blocky" screen scale-up, but there are a few people who prefer to linear screen scaling instead. You can do this by setting `max_scaling_buffer_pixels` to 64000:

    max_scaling_buffer_pixels    64000

=== VGA porch emulation ===

The "porch" is the area of a CRT monitor that surrounds the main image. When DOS Doom is used with a CRT monitor, the porch area will flash and otherwise change in response to the game's palette changes. This can be emulated by setting the `vga_porch_flash` config variable:

    vga_porch_flash     1

=== Loading disk icon ===

The disk icon flashes at the bottom right when data is loaded from disk. To turn this off, set the `show_diskicon` config variable:

    show_diskicon    0

== Sound ==

=== Custom music output ===

The `snd_musiccmd` variable can be used to invoke an arbitrary command to play MIDI music. For example:

    snd_musiccmd    "aplaymidi -p 128:0"

=== Emulating GUS cards ===

By default, Chocolate Doom's GUS emulation emulates a 1MiB GUS card. But it can be changed to emulate other memory sizes. For example, to emulate a 256KiB card instead:

    gus_ram_kb    256