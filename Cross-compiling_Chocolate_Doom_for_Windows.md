These are instructions for how to build Windows binaries of Chocolate Doom from other operating systems (ie. Linux).

== Cross-compiling on Linux to Win32 ==

=== Step 1: Setting up MinGW and SDL devel libraries ===

Most distributions include packages to ease installation of MinGW; for example, you can do "aptitude install mingw32" on both Debian and Ubuntu.  Check your distribution vendor if precompiled packages are available.  If they are not available by your distribution, you can probably use [http://icculus.org/~dolson/sdl/build-cross.sh build-cross.sh] (I have not tested this).

Next, you'll need to install SDL development libraries.  A shell script to make this task rather simple is provided [http://www.soulsphere.org/random/sdl-cross-install.sh here].  You may simply run the script via "bash sdl-cross-build.sh", or if you prefer, the procedure is rather straight-forward to read from the script and perform the operations manually.  The default install location is /opt/SDL-1.2.13 (you may change this with "bash sdl-cross-build /home/user/custom-path"), which is assumed for the next step.

<NOTE>  For non-i386 distributions, you will need a couple extra steps:
 rm /opt/SDL-1.2.13/lib/SDL_{mixer,net}.lib # if you prefer, you can rename these instead
 cp /opt/SDL-1.2.13/runtime/SDL_{mixer,net}.dll /opt/SDL-1.2.13/lib

=== Step 2: Compiling Chocolate Doom ===

After you've got the build environment all setup, the rest is easy :)
 PATH=/opt/SDL-1.2.13/bin:$PATH ./configure --host=i586-mingw32msvc --build=i386-linux
         ### For non-i386 distributions, --build needs to be changed to your native toolchain prefix.
         ###   eg, it would be x86_64-linux-gnu on amd64 distros.
 make
Change "./configure" to "./autogen.sh" if doing a build from a completely clean Git checkout.

After this is complete, you may want to strip debugging symbols from the executables by typing "i586-mingw32msvc-strip */*exe", unless your target happens to want to debug Chocolate Doom.

=== Step 3: Distribution ===

Simply copy */*.exe to your intended target (these binaries are usually always in the same directory).  You should also copy /opt/SDL-1.2.13/runtime/SDL*.dll to the target.

[[Category:Build instructions]]