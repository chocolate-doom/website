'''sdl2-branch''' is a branch of Chocolate Doom that ports the codebase to SDL version 2.0. This new version of the SDL library has a number of enhancements over the old SDL v1.2 that Chocolate Doom has used until now. Among other things it opens the door to possible ports to iOS and Android. Once completed this will become the new codebase for Chocolate Doom.

== TODO ==

=== Video ===
* Hardware scaling (mostly done)

: At the time of writing, the only thing remaining here is a config file option that will force one axis to be an integer multiple of the base screen size. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

* Integration with chocolate-doom-setup

: If "Full screen" is selected in the "Display configuration" panel, we need to get rid of the "Screen mode" selection, because we will not change the screen mode anyway but run fullscreen in the current mode instead. Also, we should probably offer integer multiples of the original 320x200/240 resolution up to the current screen mode dimensions in the "Window size" selection.

* PNG screenshots (from rendered texture)

: As an interim solution we can potentially keep the 1600x1200 software scale code so that we can keep doing screenshots as we currently do. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)
: However, rendering the current screen content into an intermediate surface and save this into a file shouldn't be too hard, either.

=== Input ===
* Cursor hiding, mouse grabbing

: There is currently a lot of code in i_video.c that takes care of changing the mouse cursor to become "invisible" and manually reseting its position to the screen center to capture "relative" mouse movement. This should all become unnecessary and get replaced with calls to SDL_SetRelativeMouseMode() in e.g. UpdateGrab().

* Keyboard input (SDL2 distinguishes between keyboard symbol and scan code by itself)

: I started looking at this a while back but hit something of a wall integrating the current input system with SDL2's new text input system. I really want to make sure we do this properly - I want to support eg. tablet systems that have pop-up on-screen keyboards. This means that i_video.c needs a hook function to enable the text input mode when the user is supposed to enter text (typing in the name of a save game, typing a multiplayer chat message, etc.). [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

* Mouse wheel handling

: In SDL2, the mouse wheel is no longer a button. Instead, we should change the code to listen to SDL_MOUSEWHEEL events. Buttons 4 and 5, in turn, can now be assigned to real mouse buttons.

=== Build system ===
* Remove SDL 1.x required work-around in configure.ac

: It's great this is no longer needed. Is it definitely no longer needed (IIRC only some platforms redefine main). If it's really We need to remove the definition from acinclude.m4 too. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

* Switch configure.ac chain to use pkg-config macros (i.e. require pkg-config as a build-dependency)

: I looked at doing this when I first set up the SDL2 build, but fell back on the traditional SDL2 macro just because it was easier. We'll need to add pkg-config to the build scripts so that we install it if it isn't on the system already. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

== External links ==
* [https://github.com/chocolate-doom/chocolate-doom/commits/sdl2-branch Recent commits to sdl2-branch] on Github.

[[Category:Branches]]