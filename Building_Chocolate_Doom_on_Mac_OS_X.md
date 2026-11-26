---
redirect_from:
 - /wiki/index.php/Building_Chocolate_Doom_on_Mac_OS_X
 - /wiki/index.php/Building_chocolate_doom_on_Mac_OS_X
 - /Building_chocolate_doom_on_Mac_OS_X.html
categories:
 - Build_instructions
---
{% image filename:Chocolate_Doom_MacOSX.png %}
Chocolate Doom running on OSX
{% endimage %}

Chocolate Doom\'s [current releases](/Downloads.md) include a [Mac OS X](https://en.wikipedia.org/wiki/OS_X) binary, but you can also create your own build.

## Xcode setup {#xcode_setup}

First, install Apple\'s [Xcode](https://en.wikipedia.org/wiki/Xcode) development environment, which can be found [here](http://developer.apple.com/tools/xcode/) (you will need to register for the Apple site to download this). This is necessary as it includes a copy of the compiler and libraries needed to build Chocolate Doom.

Launch the \*Terminal\* application and type the following

    xcode-select --install

{% include GEBB_ad.md  %}

## Building

Since the V3 release, [chocpkg](/Chocpkg.md) is the official way of building Chocolate Doom on all platforms.

Open the \*Terminal\* application and clone the chocpkg repository:

    git clone https://github.com/chocolate-doom/chocpkg.git

Then to build:

    cd chocpkg
    ./chocpkg/chocpkg build chocolate-doom

or for the latest version from Git:

    ./chocpkg/chocpkg build chocolate-doom/latest
