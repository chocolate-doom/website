'''sdl2-branch''' is a branch of Chocolate Doom that ports the codebase to SDL version 2.0. This new version of the SDL library has a number of enhancements over the old SDL v1.2 that Chocolate Doom has used until now. Among other things it opens the door to possible ports to iOS and Android. Once completed this will become the new codebase for Chocolate Doom.

== TODO ==
* Video
** Hardware scaling (mostly done)
** Integration with chocolate-doom-setup
** PNG screenshots (from rendered texture)

* Input
** Cursor hiding, mouse grabbing
** Keyboard input (SDL2 distinguishes between keyboard symbol and scan code by itself)
** Mouse wheel handling

* Build system
** Remove SDL 1.x required work-around in configure.ac
** Switch configure.ac chain to use pkg-config macros (i.e. require pkg-config as a build-dependency)
 
== External links ==
* [https://github.com/chocolate-doom/chocolate-doom/commits/sdl2-branch Recent commits to sdl2-branch] on Github.

[[Category:Branches]]