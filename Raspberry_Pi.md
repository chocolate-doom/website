The '''Raspberry Pi''' is a cheap single board computer that has become popular with hobbyists and for educational purposes. The [[wikipedia:Raspberry Pi|Raspberry Pi]] page on Wikipedia has some more information about it.

Chocolate Doom runs on the Raspberry Pi. This page is intended to have some helpful information about how to run it.

== Linux ==

Linux is probably the most common choice of OS that is run on the Raspberry Pi. For the most part, running Chocolate Doom is simple; the Pi is simply a normal Linux box. Most major Linux distributions include a package for Chocolate Doom; for example, in Raspbian, simply type:

  apt-get install chocolate-doom

If your favorite distro doesn't have a package, follow the instructions for [[Building Chocolate Doom on Linux]]. Compiling may take a while as the Pi does not have a very powerful CPU.

=== X11 ===

If you're running the Pi in a graphical environment (X server) then Chocolate Doom should just run normally; everything should work fine and there are no special instructions.

=== Framebuffer console ===

Chocolate Doom can be run from the console without using an X server; however, you will probably need to make some configuration changes to get the game to run. Run with the following arguments:

  chocolate-doom -geometry 640x480 -bpp 24

(You can run in up to 800x600 but higher modes don't seem to work - [[User:Fraggle|Fraggle]])

If you want to try Heretic, Hexen or Strife you might encounter some problems with the screen going blank. This is caused by the startup screen and turning it off solves the problem. Edit the config file, for example:

  nano ~/.chocolate-doom/chocolate-heretic.cfg

and change the "graphical_startup" line to:

  graphical_startup             0

As a quicker alternative you can add the '-devparm' command line option to get things working quickly.

=== Chocolate Doom v3 (sdl2-branch) ===

The SDL2 branch of Chocolate Doom (future v3) works quite well on the Raspberry Pi in DirectFB mode (not under X), but requires a special version of the SDL2 libraries that are available from the Retro Pie project.