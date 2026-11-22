---
redirect_from:
 - /wiki/index.php/Gl-branch
categories:
 - Inactive_branches
---
**gl-branch** is a branch in the Chocolate Doom Git repository that adds [OpenGL](https://en.wikipedia.org/wiki/OpenGL) scaling.

Chocolate Doom includes code that scales the original 320x200 VGA display to larger screen resolutions, and also provides aspect ratio correction (see [Screen resolution](/Screen_resolution.md)). However, the current scaling code is software-based, using hand-written loops to perform the scaling. This is becoming increasingly inefficient and untenable as modern computers are gaining increasingly high resolution displays (the current Macbook Pro has a 2880x1800 resolution). The software approach also means that only certain screen resolutions and window sizes are supported.

*gl-branch* uses OpenGL to accomplish the same goal in hardware. This allows scaling to arbitrarily high resolutions while using almost no CPU.

Since its initial development, it was discovered that the same result can be attained using SDL\'s built-in API functions. Similar hardware scaling has therefore been implemented as part of [sdl2-branch](/Sdl2-branch.md) and gl-branch is now considered obsolete.

## External links {#external_links}

- {% include Gitbranch.md p1="gl-branch" %} - branch now inactive
