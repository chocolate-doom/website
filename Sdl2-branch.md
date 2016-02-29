'''sdl2-branch''' is a branch of Chocolate Doom that ports the codebase to SDL version 2.0. This new version of the SDL library has a number of enhancements over the old SDL v1.2 that Chocolate Doom has used until now. Among other things it opens the door to possible ports to iOS and Android. Once completed this will become the new codebase for Chocolate Doom; the first release based on the new SDL2 codebase will be Chocolate Doom v3.0.0.

== TODO ==

=== Video ===
* Hardware scaling (mostly done)

: At the time of writing, the only thing remaining here is a config file option that will force one axis to be an integer multiple of the base screen size. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

* Integration with chocolate-doom-setup

: If "Full screen" is selected in the "Display configuration" panel, we need to get rid of the "Screen mode" selection, because we will not change the screen mode anyway but run fullscreen in the current mode instead. Also, we should probably offer integer multiples of the original 320x200/240 resolution up to the current screen mode dimensions in the "Window size" selection. [[User:Fabian|Fabian]]
:: Ah, interesting. You do have a point here. If we make the assumption that everyone is using a TFT display nowadays, then it makes sense to always run at the native resolution of the underlying monitor (as we want to minimize blur / have as much direct control over it). Desktop screen resolution might be a good proxy for this, though we should probably look into whether we can query this information outright from SDL2's video API.
:: I do think there's an argument to be made for allowing users to still manually pick their video mode. We might hide this behind a separate pop-up window, perhaps. In general it's probably best if we try to do the right thing by default and end up with a situation where users aren't making this choice. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 20:42, 9 November 2015 (UTC)

*<strike> Set SDL_Surfaces and SDL_Textures to the screen's native RGBA byte order to prevent extraneous conversion steps.[[User:Fabian|Fabian]] ([[User talk:Fabian|talk]]) 16:23, 16 November 2015 (UTC)</strike>
:: This is now done. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:26, 7 January 2016 (UTC)

=== libtextscreen ===
* All text input dialogs seem to be completely broken at present. Can't type hotkey characters to activate window buttons either.
:: Probably need to add an input interface that can pop up the on-screen keyboard and handle SDL_TEXTINPUT events. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 21:55, 5 January 2016 (UTC)

* <strike>Use the hi-res font if SDL_WINDOW_ALLOW_HIGHDPI flag is supported (ie. OS X retina display).</strike>
:: Now done. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 03:03, 28 February 2016 (UTC)

=== Input ===
*<strike>Cursor hiding, mouse grabbing</strike>

: There is currently a lot of code in i_video.c that takes care of changing the mouse cursor to become "invisible" and manually reseting its position to the screen center to capture "relative" mouse movement. This should all become unnecessary and get replaced with calls to SDL_SetRelativeMouseMode() in e.g. UpdateGrab(). [[User:Fabian|Fabian]]
:: This was I believe to work around a bug that existed in SDL1 that added lag to the mouse cursor. So we can just simplify this now. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 20:42, 9 November 2015 (UTC)
::: This is now done. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 21:43, 5 January 2016 (UTC)

* <strike>Keyboard input (SDL2 distinguishes between keyboard symbol and scan code by itself)</strike>

: I started looking at this a while back but hit something of a wall integrating the current input system with SDL2's new text input system. I really want to make sure we do this properly - I want to support eg. tablet systems that have pop-up on-screen keyboards. This means that i_video.c needs a hook function to enable the text input mode when the user is supposed to enter text (typing in the name of a save game, typing a multiplayer chat message, etc.). [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)
:: This is now done. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 21:43, 5 January 2016 (UTC)

* Mouse wheel handling

: In SDL2, the mouse wheel is no longer a button. Instead, we should change the code to listen to SDL_MOUSEWHEEL events. Buttons 4 and 5, in turn, can now be assigned to real mouse buttons. [[User:Fabian|Fabian]]
:: I see. Maybe we can map the events back into button pushes to preserve existing configs? But it's slightly complicated because the new mousewheel events contain analog data rather than just "moved up" / "moved down" as in SDL1. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 20:42, 9 November 2015 (UTC)

=== Build system ===
* <strike> Remove SDL 1.x required work-around in configure.ac</strike>

: It's great this is no longer needed. Is it definitely no longer needed (IIRC only some platforms redefine main). If it's really We need to remove the definition from acinclude.m4 too. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)

* <strike>Switch configure.ac chain to use pkg-config macros (i.e. require pkg-config as a build-dependency)</strike>

: I looked at doing this when I first set up the SDL2 build, but fell back on the traditional SDL2 macro just because it was easier. We'll need to add pkg-config to the build scripts so that we install it if it isn't on the system already. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)
:: This is now done. I've also improved the build system by putting together [https://github.com/chocolate-doom/chocpkg chocpkg]. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 03:59, 26 February 2016 (UTC)

===Non-SDL2 features===

The first release from sdl2-branch will be a new major release of Chocolate Doom; because of this, the following additional features will be included which are not strictly related to SDL2:

* Real-time windowed/fullscreen mode switching (via alt+enter or other)

* Command line changes for consistency ([https://github.com/chocolate-doom/chocolate-doom/issues/212 bug #212])

* Inclusion of optional DLLs in Windows releases (to support [[Digital music packs]] and [[PNG screenshots]]).

===Non-essential for initial release===
* PNG screenshots (from rendered texture)

: As an interim solution we can potentially keep the 1600x1200 software scale code so that we can keep doing screenshots as we currently do. [[User:Fraggle|Fraggle]] ([[User talk:Fraggle|talk]]) 00:34, 9 November 2015 (UTC)
:: However, rendering the current screen content into an intermediate surface and save this into a file shouldn't be too hard, either. [[User:Fabian|Fabian]]
::: Maybe we should just use SDL2_image to save screenshots in PNG format. PrBoom+ has recently made the switch and it might be worth having a look at how they have done it there. [[User:Fabian|Fabian]] ([[User talk:Fabian|talk]]) 19:09, 28 February 2016 (UTC)


== External links ==
* [https://github.com/chocolate-doom/chocolate-doom/commits/sdl2-branch Recent commits to sdl2-branch] on Github.

[[Category:Branches]]