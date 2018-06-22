== Display options ==

=== Fullscreen mode ===

Normally the game runs at the desktop resolution so that the monitor does not change modes when switching to fullscreen. It can be forced to a particular resolution using the <code>fullscreen_width</code> / <code>fullscreen_height</code> variables. For example:

 fullscreen_width    1024
 fullscreen_height   768

=== Window position ===

By default the game window appears in the center of the screen. This can be overridden to appear at a fixed location by setting the <code>window_position</code> variable. For example, to make the window appear at 100 pixels from the left edge and 50 pixels from the top:

 window_position    "100,50"

=== Faster startup ===

When switching to full screen mode, Chocolate Doom by default waits for a second for the screen to settle before starting the game. This can be disabled by changing <code>startup_delay</code>, eg.

 startup_delay    0

Alternatively you can make it wait longer, eg.

 startup_delay    2000

=== Force integer screen scaling ===

The screen can sometimes look a bit blurry when the game runs at a low resolution. This can be mitigated by setting <code>integer_scaling</code> to 1, which will force scaling to be an integer multiple in at least one dimension.

=== Linear scaling ===

Chocolate Doom goes to great lengths to preserve an accurate "blocky" screen scale-up, but there are a few people who prefer to linear screen scaling instead. You can do this by setting <code>max_scaling_buffer_pixels</code> to 64000 (i.e., 320*200):

 max_scaling_buffer_pixels    64000

=== VGA porch emulation ===

The "porch" is the area of a CRT monitor that surrounds the main image. When DOS Doom is used with a CRT monitor, the porch area will flash and otherwise change in response to the game's palette changes. This can be emulated by setting the <code>vga_porch_flash</code> config variable:

 vga_porch_flash     1

=== Loading disk icon ===

The disk icon flashes at the bottom right when data is loaded from disk. To turn this off, set the <code>show_diskicon</code> config variable:

 show_diskicon    0

== Sound ==

=== libsamplerate ===

=== Custom music output ===

The <code>snd_musiccmd</code> variable can be used to invoke an arbitrary command to play MIDI music. For example:

 snd_musiccmd    "aplaymidi -p 128:0"

=== Emulating GUS cards ===

By default, Chocolate Doom's GUS emulation emulates a 1MiB GUS card. But it can be changed to emulate other memory sizes. For example, to emulate a 256KiB card instead:

 gus_ram_kb    256

== Konami code ==

From the main menu in the setup tool, type the [[wikipedia:Konami code|Konami code]] to get [[doom:Simon Howard (Fraggle)|Fraggle]]'s preferred configuration defaults:

:<code>↑</code><code>↑</code><code>↓</code><code>↓</code><code>←</code><code>→</code><code>←</code><code>→</code><code>B</code><code>A</code><code>ENTER</code>

This corresponds to the following:

* WASD for movement
* Scroll wheel cycles weapons
* [[PNG screenshots]]
* Vanilla savegame and demo limits disabled
* [[ENDOOM]] screen disabled and no graphical startup
* Adlib music in OPL3 mode