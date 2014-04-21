'''gl-branch''' is a branch in the Chocolate Doom Git repository that adds [[wikipedia:OpenGL|OpenGL]] scaling.

Chocolate Doom includes code that scales the original 320x200 VGA display to larger screen resolutions, and also provides aspect ratio correction (see [[Screen resolution]]). However, the current scaling code is software-based, using hand-written loops to perform the scaling. This is becoming increasingly inefficient and untenable as modern computers are gaining increasingly high resolution displays (the current Macbook Pro has a 2880x1800 resolution). The software approach also means that only certain screen resolutions and window sizes are supported.

''gl-branch'' uses OpenGL to accomplish the same goal in hardware. This allows scaling to arbitrarily high resolutions while using almost no CPU. 

Work is currently in progress on the branch and it will be merged into the mainline code at some point in the future.

[[Category:Branches]]