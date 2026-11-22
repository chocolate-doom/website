---
redirect_from:
 - /wiki/index.php/Sdl2-branch_TODO
---
This is the old TODO list which used to be on the [sdl2-branch](/Sdl2-branch.md) page. This is now deprecated; [the Github milestone](https://github.com/chocolate-doom/chocolate-doom/milestones/Merge%20SDL2%20branch) is tracking the things to do for sdl2-branch completion.

### Video

- Hardware scaling (mostly done)

: At the time of writing, the only thing remaining here is a config file option that will force one axis to be an integer multiple of the base screen size. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:34, 9 November 2015 (UTC)

- Integration with chocolate-doom-setup

: If \"Full screen\" is selected in the \"Display configuration\" panel, we need to get rid of the \"Screen mode\" selection, because we will not change the screen mode anyway but run fullscreen in the current mode instead. Also, we should probably offer integer multiples of the original 320x200/240 resolution up to the current screen mode dimensions in the \"Window size\" selection. [Fabian](/User:Fabian.md)

  : Ah, interesting. You do have a point here. If we make the assumption that everyone is using a TFT display nowadays, then it makes sense to always run at the native resolution of the underlying monitor (as we want to minimize blur / have as much direct control over it). Desktop screen resolution might be a good proxy for this, though we should probably look into whether we can query this information outright from SDL2\'s video API.
  : I do think there\'s an argument to be made for allowing users to still manually pick their video mode. We might hide this behind a separate pop-up window, perhaps. In general it\'s probably best if we try to do the right thing by default and end up with a situation where users aren\'t making this choice. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 20:42, 9 November 2015 (UTC)

<!-- -->

: 

  : I would expect that CRT users are very much a minority these days. I believe it would be acceptable for changing the actual video mode to be an advanced feature only accessible by editing chocolate-doom.cfg. \--[chungy](/User:MikeRS.md) ([talk](/User_talk:MikeRS.md)) 18:45, 7 May 2016 (BST)

- ~~Set SDL_Surfaces and SDL_Textures to the screen\'s native RGBA byte order to prevent extraneous conversion steps.[Fabian](/User:Fabian.md) ([talk](/User_talk:Fabian.md)) 16:23, 16 November 2015 (UTC)~~

: 

  : This is now done. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:26, 7 January 2016 (UTC)

### libtextscreen

- All text input dialogs seem to be completely broken at present. Can\'t type hotkey characters to activate window buttons either.

: 

  : Probably need to add an input interface that can pop up the on-screen keyboard and handle SDL_TEXTINPUT events. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 21:55, 5 January 2016 (UTC)

<!-- -->

: 

  : I\'m planning to work on this. \-- [Jdowland](/User:Jdowland.md) ([talk](/User_talk:Jdowland.md)) 20:50, 18 March 2016 (UTC)

- ~~Use the hi-res font if SDL_WINDOW_ALLOW_HIGHDPI flag is supported (ie. OS X retina display).~~

: 

  : Now done. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 03:03, 28 February 2016 (UTC)

### Input

- ~~Cursor hiding, mouse grabbing~~

: There is currently a lot of code in i_video.c that takes care of changing the mouse cursor to become \"invisible\" and manually reseting its position to the screen center to capture \"relative\" mouse movement. This should all become unnecessary and get replaced with calls to SDL_SetRelativeMouseMode() in e.g. UpdateGrab(). [Fabian](/User:Fabian.md)

  : This was I believe to work around a bug that existed in SDL1 that added lag to the mouse cursor. So we can just simplify this now. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 20:42, 9 November 2015 (UTC)

    : This is now done. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 21:43, 5 January 2016 (UTC)

- ~~Keyboard input (SDL2 distinguishes between keyboard symbol and scan code by itself)~~

: I started looking at this a while back but hit something of a wall integrating the current input system with SDL2\'s new text input system. I really want to make sure we do this properly - I want to support eg. tablet systems that have pop-up on-screen keyboards. This means that i_video.c needs a hook function to enable the text input mode when the user is supposed to enter text (typing in the name of a save game, typing a multiplayer chat message, etc.). [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:34, 9 November 2015 (UTC)

  : This is now done. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 21:43, 5 January 2016 (UTC)

- Mouse wheel handling

: In SDL2, the mouse wheel is no longer a button. Instead, we should change the code to listen to SDL_MOUSEWHEEL events. Buttons 4 and 5, in turn, can now be assigned to real mouse buttons. [Fabian](/User:Fabian.md)

  : I see. Maybe we can map the events back into button pushes to preserve existing configs? But it\'s slightly complicated because the new mousewheel events contain analog data rather than just \"moved up\" / \"moved down\" as in SDL1. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 20:42, 9 November 2015 (UTC)

- Joystick stuff

: 

  : ~~the joystick handling needs some tweaking. SDL2 does not guarantee that the first joystick is index 0, nor (afaics) any guarantee that joystick indexes will be in an unbroken sequence. Instead SDL2 does tracking of hotplugged joysticks and provides a different ID (SDL_JoystickInstanceID) to applications who want to track a particular stick. On the plus side, we will get hotplugging support by finishing this porting work. ([related bug](https://github.com/chocolate-doom/chocolate-doom/issues/673)). \-- [Jdowland](/User:Jdowland.md) ([talk](/User_talk:Jdowland.md)) 20:47, 18 March 2016 (UTC)~~

<!-- -->

: 

  : I thought I\'d volunteered to do this somewhere, evidently not here: anyway, for currently-undisclosed reasons I am very unlikely to get far on this, so someone else will have to do it instead. Sorry! The big decision to make, IMHO, is whether to use SDL2\'s joystick API or gamepad API, the latter built on top of the former, but only supporting things it knows about. \[It knows about a lot of gamepads already <https://hg.libsdl.org/SDL/file/e12c38730512/src/joystick/SDL_gamecontrollerdb.h>\], and it seems easy enough to get others added to that list in SDL2 itself. My pet controller (8bitdo sfc30) is presently unsupported. \-- [Jdowland](/User:Jdowland.md) ([talk](/User_talk:Jdowland.md)) 21:24, 12 April 2016 (BST)

<!-- -->

: 

  : Now mostly working I believe. There are still some improvements can probably make, like using the new game controller API to auto configure, but for now this is good. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 16:00, 1 June 2016 (BST)

### Build system {#build_system}

- ~~Remove SDL 1.x required work-around in configure.ac~~

: It\'s great this is no longer needed. Is it definitely no longer needed (IIRC only some platforms redefine main). If it\'s really We need to remove the definition from acinclude.m4 too. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:34, 9 November 2015 (UTC)

- ~~Switch configure.ac chain to use pkg-config macros (i.e. require pkg-config as a build-dependency)~~

: I looked at doing this when I first set up the SDL2 build, but fell back on the traditional SDL2 macro just because it was easier. We\'ll need to add pkg-config to the build scripts so that we install it if it isn\'t on the system already. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:34, 9 November 2015 (UTC)

  : This is now done. I\'ve also improved the build system by putting together [chocpkg](https://github.com/chocolate-doom/chocpkg). [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 03:59, 26 February 2016 (UTC)

### Non-SDL2 features {#non_sdl2_features}

The first release from sdl2-branch will be a new major release of Chocolate Doom; because of this, the following additional features will be included which are not strictly related to SDL2:

- ~~Real-time windowed/fullscreen mode switching (via alt+enter or other)~~

: Using alt+enter as the binding might be considered akin to breaking vanilla behavior, since alt+enter on vanilla doesn\'t do anything special. There are situations like typing a chat msg while holding alt to strafe in multiplayer which could unintentionally trigger this. Windows+enter is a safer choice. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:35, 19 March 2016 (UTC)

<!-- -->

: 

  : Thanks to Jon for implementing this. I applied some fixes yesterday; there might be more bugs hiding in there still but for now I think this is good to go. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 16:00, 1 June 2016 (BST)

- Command line changes for consistency ([bug #212](https://github.com/chocolate-doom/chocolate-doom/issues/212))

<!-- -->

- Inclusion of optional DLLs in Windows releases (to support [Digital music packs](/Digital_music_packs.md) and [PNG screenshots](/PNG_screenshots.md)).

: [chocpkg](https://github.com/chocolate-doom/chocpkg) should hopefully help with this. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:35, 19 March 2016 (UTC)

### Non-essential for initial release {#non_essential_for_initial_release}

- PNG screenshots (from rendered texture)

: As an interim solution we can potentially keep the 1600x1200 software scale code so that we can keep doing screenshots as we currently do. [Fraggle](/User:Fraggle.md) ([talk](/User_talk:Fraggle.md)) 00:34, 9 November 2015 (UTC)

  : However, rendering the current screen content into an intermediate surface and save this into a file shouldn\'t be too hard, either. [Fabian](/User:Fabian.md)

    : Maybe we should just use SDL2_image to save screenshots in PNG format. PrBoom+ has recently made the switch and it might be worth having a look at how they have done it there. [Fabian](/User:Fabian.md) ([talk](/User_talk:Fabian.md)) 19:09, 28 February 2016 (UTC)
