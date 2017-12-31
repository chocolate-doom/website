
[[chocpkg]] is the official way of building Chocolate Doom on all platforms from v3 onwards.  The following are instructions for building Chocolate Doom under [http://www.fedoraproject.org/ Fedora] the "Fedora" way; they may also work on distributions derived from or related to Fedora, but this has not been tested.

== Dependencies ==

The first step is to install the necessary dependencies for building Chocolate Doom.  The easiest way to do this is to use the ''dnf'' package manager.  Run this command as root:

 dnf install SDL2-devel SDL2_mixer-devel SDL2_net-devel gcc make python-imaging

Several packages will be installed. 

{{Generic package build and install}}

[[Category:Build instructions]]