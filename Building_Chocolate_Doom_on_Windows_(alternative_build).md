[[Image:Chocowindows.png|right|thumb|Chocolate Doom on Windows]]






== Getting the required programs ==

The Chocolate Doom source comes with a Code::Blocks workspace and projects. In order to use them, you will need to install a few programs first:

1. [http://forums.codeblocks.org/index.php?board=20.0 Code::Blocks] (it's important that you use the most recent build)

2. [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=240780 MinGW]

3. [http://www.libsdl.org/download-1.2.php SDL], [http://www.libsdl.org/projects/SDL_mixer/ SDL_mixer], [http://www.libsdl.org/projects/SDL_net/ SDL_net] (you need to download the development libraries)

== Installing Code::Blocks ==

Installing Code::Blocks shouldn't be too hard, simply extract the program to whatever direcrtory you want. When you first run Code::Blocks, it should automatically detect your MinGW installation.

== Installing MinGW ==

It's recommended that you install the candidate files of MinGW, since they're newer. What also important is to install MinGW to the top of your drive (i.e. C:\MinGW), otherwise Code::Blocks may not detect it.

In case you're going to compile a debug build of Chocolate Doom, the recommended debugger to use is GDB, which you can get [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=20507 here].

== Installing the Development Libraries ==

After you get the development libraries of SDL, SDL_mixer and SDL_net, extract the files and copy the 'include', 'lib' and 'bin' folders to the top of your MinGW directory (i.e. C:\MinGW). That's it, you should now be ready to build Chocolate Doom.

== Compiling Chocolate Doom ==

In the source directory of Chocolate Doom, you will find the Code::Blocks files in the 'codeblocks' folder, the workspace file is called 'chocolate-doom.workspace'.

After you open the workspace, you can select what type of build you want to create: Debug or Release. In case you're going to debug Chocolate Doom, you should compile a debug build (which is quite bigger than the release), otherwise, you can just compile a release build. In order to start building, click on '''Build''' -> '''Rebuild workspace'''.

At end of the compilation process, you will find your fresh new Chocolate Doom build in the 'bin' folder at the top of the source directory. Copy your IWADs and launch Chocolate Doom. Happy Dooming!