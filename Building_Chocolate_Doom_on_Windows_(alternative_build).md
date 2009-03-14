[[Image:Chocowindows.png|right|thumb|Chocolate Doom on Windows]]

== Getting the required files ==
The Chocolate Doom source code comes with a Code::Block workspace and projects and a Microsoft Visual C++ 2008 Express solution. Additionally, you will need to get the development libraries of [http://www.libsdl.org/download-1.2.php SDL], [http://www.libsdl.org/projects/SDL_mixer/ SDL_mixer] and [http://www.libsdl.org/projects/SDL_net/ SDL_net]. Make sure you get the right files for the compiler that you are going to use.

== Obtaining the source code ==
The easiest way to download the source code is to use a SVN client such as [http://tortoisesvn.net/ TortoiseSVN]. The following instructions are for TortoiseSVN:

1. After you have installed the software, right click on or in the directory you want to download the source code to. From the right click menu choose the "SVN Checkout" option.

2. Enter the URL https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/trunk/chocolate-doom/ into the "URL of repository" box and click OK.

3. Wait until the source code has been downloaded (the code is several megabytes in size, so it can take a while to download it).

== Using Visual C++ ==

=== Step 1: Getting Visual C++ ===

In order to obtain Visual C++ 2008, go to [http://www.microsoft.com/express/download/default.aspx this link]. If you plan on making a Visual C++ 2005 project you will need the Microsoft Platform SDK and the DirectX SDK.

=== Step 2: Installing the Development Libraries ===

Download the VC8 development libraries for SDL, SDL_mixer and SDL_net. After extracting these libraries to a folder, add those folders to the Visual C++ Directories under Tools > Options > Projects and Solutions.

=== Step 3: Compiling Chocolate Doom ===
In the vc9 folder there should be a solution file. When compilation is complete, the program will be in one of vc9's subfolders.

== Using Code::Blocks ==

First, download Code::Blocks from [http://www.codeblocks.org/downloads/binaries here]. It is recommended to download a package that includes the compiler and debugger from MinGW pre-installed. Otherwise, in case you want to install each manually, you can find the MinGW installer [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=240780 here] and the debugger [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=20507 here].

=== Step 1: Installing MinGW ===

'''Note: This step can be skipped if you chose to install the complete Code::Blocks package.'''

It is recommended that you install the candidate files of MinGW since they are newer. Additionally, it is important to install MinGW to the top of your drive (i.e. C:\MinGW), otherwise Code::Blocks may not detect it.

=== Step 2: Installing the Development Libraries ===

After you get the development libraries of SDL, SDL_mixer and SDL_net, extract the files and copy the 'include', 'lib' and 'bin' folders to the top of your MinGW directory (i.e. C:\MinGW). Also make sure to move the files from the 'include\SDL' subfolder to the main 'include' folder. At this point you should be ready to build Chocolate Doom.

=== Step 3: Compiling Chocolate Doom ===

In the source directory of Chocolate Doom, you will find the Code::Blocks files in the 'codeblocks' folder, the workspace file is called 'main.workspace'.

After you open the workspace, you can select what type of build you want to create: Debug or Release. In case you are going to debug Chocolate Doom, you should compile a debug build (which is quite a lot bigger than the release), otherwise, you can just compile a release build. In order to start building, click on '''Build''' and then '''Rebuild workspace'''.

At the end of the compilation process, you will find your new Chocolate Doom build in the 'bin' folder at the top of the source directory.

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
Change "./configure" to "./autogen.sh" if doing a build from a completely clean SVN checkout.

After this is complete, you may want to strip debugging symbols from the executables by typing "i586-mingw32msvc-strip */*exe", unless your target happens to want to debug Chocolate Doom. You could optionally make the binaries even smaller with UPX, but they're already small enough to fit on a floppy disk at this point, so why bother?

=== Step 3: Distribution ===

Simply copy */*.exe to your intended target (these binaries are usually always in the same directory).  You should also copy /opt/SDL-1.2.13/runtime/SDL*.dll to the target.

[[Category:Build instructions]]