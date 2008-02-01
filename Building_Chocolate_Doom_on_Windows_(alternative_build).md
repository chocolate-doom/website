[[Image:Chocowindows.png|right|thumb|Chocolate Doom on Windows]]

== Getting the required programs ==
The Chocolate Doom source code comes with a Code::Block workspace and project and a Microsoft Visual C++ 2008 Express solution.

=== Using Visual C++ ===

If you need to obtain Visual C++ 2008 go to [http://www.microsoft.com/express/download/default.aspx this link]. If you plan on making a Visual C++ 2005 project you will need the Microsoft Platform SDK and the DirectX SDK.

=== Using Code::Blocks ===

In order to use this, you will need to install a few programs first:

1. [http://forums.codeblocks.org/index.php?board=20.0 Code::Blocks] (it is important that you use the most recent build)

2. [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=240780 MinGW]

3. [http://www.libsdl.org/download-1.2.php SDL], [http://www.libsdl.org/projects/SDL_mixer/ SDL_mixer], [http://www.libsdl.org/projects/SDL_net/ SDL_net] (you need to download the development libraries)

== Obtaining the source code ==
The easiest way to download the source code is to use a SVN client such as [http://tortoisesvn.net/ TortoiseSVN]. The following instructions are for TortoiseSVN.

1. After you have installed the software, right click on or in the directory you want to download the source code to. From the right click menu choose the "SVN Checkout" option.

2. Enter the URL https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/trunk/chocolate-doom/ into the "URL of repository" box and click OK.

3. Wait until the source code has been downloaded (the code is several megabytes in size, so it can take a while to download it).

== Installing Code::Blocks ==
This step can be ignored if using Visual C++

Installing Code::Blocks should not be too hard, simply extract the program to whatever directory you want. When you first run Code::Blocks, it should automatically detect your MinGW installation.

== Installing MinGW ==
This step can be ignored if using Visual C++

It is recommended that you install the candidate files of MinGW, since they are newer. What is also important is to install MinGW to the top of your drive (i.e. C:\MinGW), otherwise Code::Blocks may not detect it.

In case you are going to compile a debug build of Chocolate Doom, the recommended debugger to use is GDB, which you can get [http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=20507 here].

== Installing the Development Libraries ==

=== Using Visual C++ ===
Download the VC8 development libraries for SDL, SDL_mixer and SDL_net. After extracting these libraries to a folder, add those folders to the Visual C++ Directories under Tools > Options > Projects and Solutions.

=== Using Mingw32 ===
After you get the development libraries of SDL, SDL_mixer and SDL_net, extract the files and copy the 'include', 'lib' and 'bin' folders to the top of your MinGW directory (i.e. C:\MinGW). Also make sure to move the files from the 'include\SDL' subfolder to the main 'include' folder. At this point you should be ready to build Chocolate Doom.

== Compiling Chocolate Doom ==

=== Using Visual C++ ===
In the vc9 folder there should be a solution file. When compilation is complete, the program will be in one of vc9's subfolders.

=== Using Code::Blocks ===
In the source directory of Chocolate Doom, you will find the Code::Blocks files in the 'codeblocks' folder, the workspace file is called 'main.workspace'.

After you open the workspace, you can select what type of build you want to create: Debug or Release. In case you are going to debug Chocolate Doom, you should compile a debug build (which is quite a lot bigger than the release), otherwise, you can just compile a release build. In order to start building, click on '''Build''' and then '''Rebuild workspace'''.

At the end of the compilation process, you will find your new Chocolate Doom build in the 'bin' folder at the top of the source directory.