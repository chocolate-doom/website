---
redirect_from:
 - /wiki/index.php/Building_Chocolate_Doom_on_Windows
categories:
 - Build_instructions
---
{% image filename:Chocolate_Windows_7.png %}
Chocolate Doom on Windows
{% endimage %}

Chocolate Doom is built on Windows using the *MSYS2* build environment. Windows developers may find this unusual as Microsoft Visual Studio is often considered the \"standard\" compiler for that platform. MSYS2 provides a Unix-like development environment that is the same as other platforms, so the build system and compiler (autotools, make, gcc) are identical for every operating system that Chocolate Doom runs on. Using MSYS2 also means that Chocolate Doom is not dependent on a proprietary tool.

Building using MSYS2 is not difficult. However, MSYS2 is a Unix-like environment, so if you are not familiar with using a Unix command line, or find these instructions confusing, it may be a good idea to do some basic reading about how to use one. If you have used DOS or the Windows command line in the past you will find that things are fairly similar.

Developers who are unhappy with this arrangement can use the [alternative build](/Building_Chocolate_Doom_on_Windows_(alternative_build).md) project files to compile using either Microsoft Visual Studio or Code::Blocks. However, be aware that these project files may be out of date, and the \"canonical\" way of building Chocolate Doom is using MSYS2.

## Installing MSYS2 {#installing_msys2}

**Platform note:** MSYS2 requires [Windows Vista](https://en.wikipedia.org/wiki/Windows_Vista) or newer to run, but the executables produced will be able to launch on [Windows XP](https://en.wikipedia.org/wiki/Windows_XP).

The first step is to install [MSYS2](https://www.msys2.org/). MSYS2 has a graphical setup wizard that makes setting it up easy: simply download and run *msys2-x86_64-\*.exe* from the website. If you use a 32-bit system, use *msys2-i686-\*.exe* instead.

If you already have MSYS2 installed, you can skip the (re)installation but make sure that your packages are up to date with the `pacman -Syu` command.

On a fresh installation, please check the MSYS2 website carefully for immediate update information, the gist should be:

1.  Run `pacman -Syu`, this will grab only a few updates including `pacman` itself, type *y* at the prompts to resolve conflicts. It will print a warning to close MSYS2 *without* exiting to shell first. Closing the MinTTY terminal window does not seem to always work, so use Task Manager (Ctrl-Shift-Esc) to do an \"End Process\" on *mintty.exe*, *bash.exe*, and *pacman.exe*.
2.  Re-open the MSYS2 terminal, using the start menu/screen shortcut, and run `pacman -Syu` once more. This should receive even more updates available for your MSYS2 environment, and should complete the first step.

## Installing build dependencies {#installing_build_dependencies}

There are two main compiler options available for building with MSYS2, *mingw-w64-i686* for building 32-bit Windows executables, and *mingw-w64-x86_64* for building 64-bit Windows executables. Both should work, but since 64-bit does not provide any benefits to Chocolate Doom and 32-bit executables will run on any 32- or 64-bit version of Windows starting from XP onwards, we will prefer the 32-bit build.

The Chocolate Doom build has a few dependencies, basic ones for any software development at all are in the *base-devel* and *msys2-devel* groups, the MinGW toolchain is available in the *mingw-w64-i686-toolchain* group, press enter at the prompts to select all packages in these groups. Additional dependencies include SDL2, libpng, libsamplerate, python, and zip; git should be installed so the GitHub repository can be cloned. All together, the command to install everything should be:

    pacman -S base-devel msys2-devel mingw-w64-i686-toolchain \
           mingw-w64-i686-SDL2_net mingw-w64-i686-SDL2_mixer \
           mingw-w64-i686-libsamplerate mingw-w64-i686-libpng \
           automake-wrapper autoconf python zip git

## Clone the Git repository {#clone_the_git_repository}

Technically optional, since you can download a release tarball too, but Git is extremely handy if you will be making modifications and keeping track with current development:

`git clone https://github.com/chocolate-doom/chocolate-doom`

{% include GEBB_ad.md  %}

## Compiling Chocolate Doom {#compiling_chocolate_doom}

At this stage, you **must** use the appropriate MSYS2 terminal (**mingw32.exe** or **mingw64.exe**) so that the *\$PATH* environment variable points to the proper toolchain, for the *mingw-w64-i686* toolchain (32-bit), use the *MSYS MinGW 32-bit* start menu/screen shortcut, and your prompt will reflect it with `MINGW32` printed as part of it. If this is not in your current prompt, just run the new terminal from the shortcut.

Change to the chocolate-doom directory:

     cd chocolate-doom

The Git repository does not include autoconf and automake generated files, use the *autogen.sh* script to do so, as well passing in the compiler host triplet:

    ./autogen.sh --host=i686-w64-mingw32

If you already have a *./configure* script, you can replace *./autogen.sh* with it.

Assuming that no errors occured in the configure stage, you should be ready to compile all the EXEs:

    make

After this is done, you still won\'t be able to run the Chocolate EXEs directly from the src directory, as they will be linked against DLLs not present in the folder. Instead, change to the pkg/win32 directory to build Windows release zips:

    cd pkg/win32
    make

## Result and running {#result_and_running}

If the build is successful, you should not have any errors from the *make* command, and the pkg/win32 directory should have some staging folders and zip files.

Browse to this directory with Windows Explorer, usually at a path such as *C:\\msys64\\home\\\$User\\chocolate-doom\\pkg\\win32*, and you can either extract the zip files to another location, or run directly from one of the staging-\* folders, which contain all DLL files necessary to launch.

## Modifying the source code {#modifying_the_source_code}

If you want to make your own mods to the Chocolate Doom source, go to *\~/chocolate-doom*. The source code is in the *src* directory; type *make* to build the code after making any mods.

## Keeping up to date {#keeping_up_to_date}

If you have compiled the latest version from Git, you may want to keep up to date with new developments and bug fixes. To update to the latest version, go to *\~/chocolate-doom* and type:

    git pull
    make

## See also {#see_also}

- [Building Chocolate Doom on Windows (alternative build)](/Building_Chocolate_Doom_on_Windows_(alternative_build).md)
- [Cross-compiling Chocolate Doom for Windows](/Cross-compiling_Chocolate_Doom_for_Windows.md)
