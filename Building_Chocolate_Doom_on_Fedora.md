---
redirect_from:
 - /wiki/index.php/Building_Chocolate_Doom_on_Fedora
categories:
 - Build_instructions
---
[chocpkg](/Chocpkg.md) is the official way of building Chocolate Doom on all platforms from v3 onwards. The following are instructions for building Chocolate Doom under [Fedora](http://www.fedoraproject.org/) the \"Fedora\" way; they may also work on distributions derived from or related to Fedora, but this has not been tested.

## Dependencies

The first step is to install the necessary dependencies for building Chocolate Doom. The easiest way to do this is to use the *dnf* package manager. Run this command as root:

    dnf install SDL2-devel SDL2_mixer-devel SDL2_net-devel gcc make python-imaging

Several packages will be installed.

{% include Generic_package_build_and_install.md  %}
