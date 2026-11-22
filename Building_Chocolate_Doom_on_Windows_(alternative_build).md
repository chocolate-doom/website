---
redirect_from:
 - /wiki/index.php/Building_Chocolate_Doom_on_Windows_(alternative_build)
categories:
 - Build_instructions
---
{% include Update_me.md p1="Visual Studio and Code::Blocks files have been replaced by CMake, this article has not been changed to reflect this yet." %}

{% capture caption %}
Chocolate Doom on Windows XP
{% endcapture %}
{% include Image.md caption=caption image="Chocowindows.png" %}

The official way of building Chocolate Doom on Windows is [using MSYS2](/Building_Chocolate_Doom_on_Windows.md). However, the Chocolate Doom source code comes with alternative project files for building the code using Code::Blocks and Microsoft Visual Studio, for people who are more comfortable with those environments.

You may find that these project files are sometimes slightly out of date and not up-to-date with the latest changes to the source code. You\'re welcome to use these alternative build systems if you\'re more comfortable with them, but bear in mind that they are \"unofficial\".

## Getting the required files {#getting_the_required_files}

The Chocolate Doom source code comes with a Code::Block workspace and projects and a Microsoft Visual C++ 2008 Express solution. Additionally, you will need to get the development libraries of [SDL](http://www.libsdl.org/download-1.2.php), [SDL_mixer](http://www.libsdl.org/projects/SDL_mixer/release-1.2.html) and [SDL_net](http://www.libsdl.org/projects/SDL_net/release-1.2.html). Make sure you get the right files for the compiler that you are going to use. Also make sure you use the 1.2 version of all files. There are currently 2.0 versions\--these will not work with Chocolate Doom.

## Obtaining the source code {#obtaining_the_source_code}

The easiest way to download the source code is to download a ZIP of the source code for a particular release [directly from the GitHub chocolate-doom page](https://github.com/chocolate-doom/chocolate-doom), or select \"Clone or Download → Download ZIP\" to download a ZIP of the source for the current development state.

Alternatively you can use a git client such as [TortoiseGit](https://tortoisegit.org) or [GitHub Desktop](https://desktop.github.com). The following instructions are for TortoiseGit:

1\. After you have installed the software, right click on or in the directory you want to download the source code to. From the right click menu choose the \"Git Clone\...\" option.

2\. Enter the URL <https://github.com/chocolate-doom/chocolate-doom.git> into the \"URL\" box and click OK.

3\. Wait until the source code has been downloaded (the code is several megabytes in size, so it can take a while to download it).

## Using Visual C++ {#using_visual_c}

### Step 1: Getting Visual C++ {#step_1_getting_visual_c}

In order to obtain Visual C++ 2008, go to [this link](http://www.microsoft.com/express/download/default.aspx). If you plan on making a Visual C++ 2005 project you will need the Microsoft Platform SDK and the DirectX SDK.

### Step 2: Installing the Development Libraries {#step_2_installing_the_development_libraries}

Download the VC8 development libraries for SDL, SDL_mixer and SDL_net. Here are direct links. If they do not work, google for SDL, SDL mixer, SDL net. Make sure you download the 1.2 versions!

[SDL](http://www.libsdl.org/release/SDL-devel-1.2.15-VC.zip)

[SDL mixer](http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-devel-1.2.12-VC.zip)

[SDL net](http://www.libsdl.org/projects/SDL_net/release/SDL_net-devel-1.2.8-VC.zip)

Extract these to a folder inside the top level source code folder called something brilliant like \"sdl\". These folders contain three key components: .h files for compiling, .lib files for linking, and .dll files for runtime. You must tell Visual Studio where these components are for Chocolate Doom to run.

**.h files**: right click on the Chocolate Doom project in Visual Studio and select Properties. Navigate to Configuration Properties -\> C/C++ on the left. Click on Additional Include Directories on the right. Add an entry for the include directories for each of the SDL libraries. Assuming you unzipped the libraries into a folder called \"sdl\" directly under the top level source folder , this would be

- ..\\sdl\\SDL_mixer-1.2.12\\include
- ..\\sdl\\SDL_net-1.2.8\\include
- ..\\sdl\\SDL-1.2.15\\include

Note: You must have the \"..\\\" at the front because these are relative to the msvc directory.

**.lib files**: right click on the Chocolate Doom project in Visual Studio and select Properties. Navigate to Configuration Properties -\> Linker on the left. Click on Additional Library Directories on the right. Assuming the same directory structure as we had for include files, add the following:

- ..\\sdl\\SDL_mixer-1.2.12\\lib\\x86
- ..\\sdl\\SDL_net-1.2.8\\lib\\x86
- ..\\sdl\\SDL-1.2.15\\lib\\x86

**.dll files**: here you have a few options. The simplest one is to just thrown the .dll files into the same directory as the Chocolate Doom executable is being generated. If you are compiling in debug mode this would be msvc\\Debug, for release it would be msvc\\Release. Just copy the following files into that directory:

- sdl\\SDL_mixer-1.2.12\\lib\\x86\\SDL_mixer.dll
- sdl\\SDL_net-1.2.8\\lib\\x86\\SDL_net.dll
- sdl\\SDL-1.2.15\\lib\\x86\\SDL.dll

The other option is to update the PATH environment variable so that it contains references to those files. You can either hardcode your system level PATH variable (if you go this route, you\'ll have to restart Visual Studio before it takes effect) or you can tell Visual Studio to add values to its own private PATH when it runs. If you want to set Visual Studio\'s private PATH variable, right click on the Chocolate Doom project in Visual Studio and select Properties. Navigate to Configuration Properties -\> Debugging on the left. Set the value of the Environment setting on the right. Use the special \$(ProjectDir) variable so you don\'t have to use hardcoded paths. Give it this value:

PATH=%PATH%;\$(ProjectDir)..\\sdl\\SDL_net-1.2.8\\lib\\x86;\$(ProjectDir)..\\sdl\\SDL-1.2.15\\lib\\x86;\$(ProjectDir)..\\sdl\\SDL_mixer-1.2.12\\lib\\x86

Note: Visual Studio 2010 no longer loads custom directories globally, instead they are added individually to each project that requires them. To add SDL, SDL_mixer, and SDL_net to the Chocolate Doom project, open the solution and, for each project file, right click and choose Properties. From there you can click on VC++ Directories and add the SDL, SDL_mixer, and SDL_net directories as usual.

### Step 3: Compiling Chocolate Doom {#step_3_compiling_chocolate_doom}

**Incorrect project file**: Note that the current project file has some bad settings. A few files need to be added to the project and a few need to be removed. This would be best handled but checking in a fixed version into Subversion but in lieu of that, here is what you need to fix:

- remove the references to the md5.h and md5.c files from the project because they no longer exist. Find them at the top level of the source code tree in Visual Studio, right click, and select \"Exclude From Project\".

<!-- -->

- add references to files to the Source folder in Visual Studio. Right click on the project and select Add -\> Existing Item. Select the files src\\sha1.h and src\\sha1.c.

<!-- -->

- add references to files to the Text Screen folder in Visual Studio. Right click on the project and select Add -\> Existing Item. Select the files textscreen\\txt_utf8.h and textscreen\\txt_utf8.c.

In the vc9 folder there should be a solution file. When compilation is complete, the program will be in one of vc9\'s subfolders.

## Using Code::Blocks {#using_codeblocks}

First, download Code::Blocks from [here](http://www.codeblocks.org/downloads/binaries). It is recommended to download a package that includes the compiler and debugger from MinGW pre-installed. Otherwise, in case you want to install each manually, you can find the MinGW installer [here](http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=240780) and the debugger [here](http://sourceforge.net/project/showfiles.php?group_id=2435&package_id=20507).

### Step 1: Installing MinGW {#step_1_installing_mingw}

**Note: This step can be skipped if you chose to install the complete Code::Blocks package.**

It is recommended that you install the candidate files of MinGW since they are newer. Additionally, it is important to install MinGW to the top of your drive (i.e. C:\\MinGW), otherwise Code::Blocks may not detect it.

### Step 2: Installing the Development Libraries {#step_2_installing_the_development_libraries_1}

After you get the development libraries of SDL, SDL_mixer and SDL_net, extract the files and copy the \'include\', \'lib\' and \'bin\' folders to the top of your MinGW directory (i.e. C:\\MinGW). Also make sure to move the files from the \'include\\SDL\' subfolder to the main \'include\' folder. At this point you should be ready to build Chocolate Doom.

### Step 3: Compiling Chocolate Doom {#step_3_compiling_chocolate_doom_1}

In the source directory of Chocolate Doom, you will find the Code::Blocks files in the \'codeblocks\' folder, the workspace file is called \'main.workspace\'.

After you open the workspace, you can select what type of build you want to create: Debug or Release. In case you are going to debug Chocolate Doom, you should compile a debug build (which is quite a lot bigger than the release), otherwise, you can just compile a release build. In order to start building, click on **Build** and then **Rebuild workspace**.

At the end of the compilation process, you will find your new Chocolate Doom build in the \'bin\' folder at the top of the source directory.

## Using CMake {#using_cmake}

The Chocolate Doom source code from git has recently been updated with a new build system utilizing CMake, which helps ease building on Windows since CMake can create project files for recent versions of Visual Studio and Code::Blocks and speed up the process of building Chocolate Doom on Windows for those who may not be comfortable building on MSYS2.

### Step 1: Getting CMake {#step_1_getting_cmake}

You need to download CMake from [here](https://cmake.org/download/). You can use either the installer or the zip file. The architecture types on the download page doesn\'t matter for 64-bit machines, since the 64-bit CMake binaries can create projects for either 32 or 64-bit binaries.

### Step 2: Installing the Development Libraries {#step_2_installing_the_development_libraries_2}

You need to download [SDL2](https://www.libsdl.org/download-2.0.php), [SDL2_net](https://www.libsdl.org/projects/SDL_net/), and [SDL2_mixer](https://www.libsdl.org/projects/SDL_mixer/) for either Visual Studio (VC) or Code::Blocks (MinGW). It doesn\'t matter where you put them since you will use CMake to locate them. Though if preferred, you can place each of them in a folder called \"sdl2\" so you won\'t have to be hunting around for the libraries. If going in that direction, the folders might look like this:
\\sdl2\\SDL2-2.0.12\\
\\sdl2\\SDL2_net-2.0.1\\
\\sdl2\\SDL2_mixer-2.0.4\\

### Step 3: Compiling Chocolate Doom {#step_3_compiling_chocolate_doom_2}

You need to open CMake after installation to bring up the GUI.
Then, select \"browse source\" to locate the folder that contains the source code.
After that, select \"browse build\" to locate the folder where the project files and the compiled binaries should be located. Typically, it would be inside a \"build\" folder within the source code folder.
Then select \"configure.\" A window should pop up asking you what type of project files you want to create. Select either \"Visual Studio XX 20XX\" (the Xs represent the Version Number and Year) or \"Code::Blocks Makefiles\" (for Code::Blocks, it is best to manually specify the c and c++ compilers). For architecture, it is best to specify \"Win32\" instead of leaving it blank (that defaults to \"x64\" on 64-bit CMake binaries) since it won\'t benefit you in any way to build 64-bit binaries of Chocolate Doom. Once you select \"okay\", CMake will attempt to locate the c and c++ compilers (unless you already specified the compilers), and read every \"CMakeList\" files in the source code folder. Once it is all done, Some selections will appear on the GUI, this is the time to specify the locations of the SDL2 libraries and include files. Once that\'s done, select \"generate\" to generate the project files.
Finally, click \"open project\" to open the IDE you use, depending on the project files, and within the IDE, click \"build\" to build the binaries.
When that\'s done, copy every DLL files from the SDL2 libraries to the directory where the compiled binaries are located.
