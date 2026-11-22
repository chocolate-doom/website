---
redirect_from:
 - /wiki/index.php/Sdl2-branch
categories:
 - Inactive_branches
---
**sdl2-branch** was a branch of Chocolate Doom that ports the codebase to SDL version 2.0. This new version of the SDL library has a number of enhancements over the old SDL v1.2 that Chocolate Doom has used until now. Among other things it opens the door to possible ports to iOS and Android. Now complete, sdl2-branch has become the new codebase for Chocolate Doom; Chocolate Doom v3.0.0 is the first release based on the new SDL2 codebase.

## New features {#new_features}

- Code runs on SDL2, bringing a small number of advantages such as hi-res icons, support for on-screen keyboards, and the possibility of ports to Android, iOS and Emscripten in the future.
- Hardware-based scaling allows running at any resolution with little to no CPU overhead. The old software-based scaling no longer exists.
- Dynamic switching between windowed and fullscreen mode using alt+enter key combo.
- A new build system ([chocpkg](/Chocpkg.md)).
- Previously-optional libraries will be included as standard in binary releases; this will allow people to use [PNG screenshots](/PNG_screenshots.md) and [digital music packs](/Digital_music_packs.md) on Windows.

## External links {#external_links}

- {% include Gitbranch.md name="sdl2-branch" %} - now complete and no longer active.
- [dev list announcement](https://groups.google.com/a/soulsphere.org/forum/#!topic/chocolate-doom-dev-list/tfr-FKhfBKU) that sdl2-branch will be the base for Chocolate Doom v3.0.
- [sdl2-branch milestone](https://github.com/chocolate-doom/chocolate-doom/milestone/1) on GitHub.
