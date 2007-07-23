Building Chocolate Doom on *BSD can be slightly more involved than on Linux, however it is not difficult.
== OpenBSD ==
=== Requirements ===
:''TODO: Double-check that all the requirements are listed, I'm writing this on a fully-bloated install.''
In order to compile Chocolate Doom, you will need the following (see [http://www.openbsd.org/faq/faq15.html#PkgMgmt] for installing packages on OpenBSD):
* X.Org, if you do not have it please see [http://www.openbsd.org/faq/faq4.html#AddFileSet] and install the x*.tgz file sets.
* Base compiling environment (gcc must be installed), if you do not have it see [http://www.openbsd.org/faq/faq4.html#AddFileSet] and install the comp??.tgz file set.
* autoconf - There are multiple versions available, this guide was specifically tested with autoconf-2.61p1.
* automake - There are multiple versions available, this guide was specifically tested with automake-1.9.6p1.
* SDL - you must have installed at least sdl (theres two flavors, -esd and -sun, I don't think it'd make a difference but for reference, I have -sun installed), sdl-mixer, sdl-net, and sdl-sound.
* Subversion - unless you're compiling the 0.1.4 release (not recommended due to its age and numerous important bugfixes are in Subversion)

=== Fetching the source code ===
 svn co https://chocolate-doom.svn.sourceforge.net/svnroot/chocolate-doom/trunk
 cp -R trunk/chocolate-doom ~
 cd ~/chocolate-doom
Copying the source directory is not necessary, but it will keep your SVN tree clean when you want to update it. To update it, just cd into the trunk directory and type `svn update`.

=== Compiling the source code ===
Unlike most Linux systems, OpenBSD does not have AUTOMAKE_VERSION or AUTOCONF_VERSION automatically set (as it does not include autoconf or automake in the base system anyhow). These will need to be set first.
 export AUTOMAKE_VERSION=1.9 # Change to your native automake version
 export AUTOCONF_VERSION=2.61 # Change to your native autoconf version
 ./autogen.sh --mandir=/usr/local/man
   # If you would like to install to any directory than /usr/local, add --prefix=/directory; change the mandir too
   # By default OpenBSD does not check /usr/local/share/man, which is where it would normally install the manpage
 make
 sudo make install # Or use su, or run as root, or just `make install` if you're installing to $HOME
Also unlike most Linux systems, neither /usr/games nor /usr/local/games is set by the shell by default in OpenBSD. You can either add those paths to your $PATH automatically ($HOME/.kshrc, $HOME/.bash_profile, etc), or copy the binaries to /usr/bin or /usr/local/bin (your preference).

Ideally, you should copy your IWADs to /usr/local/share/games/doom, as that would be the (default) directory Chocolate Doom will look for the files.

=== TiMidity ===
TiMidity would normally be the way to play the background music, however there is a known bug in SDL_mixer [http://bugzilla.libsdl.org/show_bug.cgi?id=118] that causes it to be unusable for all Doom source ports! If you need to have TiMidity installed, you can work around the problem by disabling music (sound effects still work, they're independent of TiMidity) in chocolate-setup.
:UPDATE: The bug has now been fixed by libsdl, and the fixed version is now in [http://openbsd.org/faq/faq5.html#Flavors OpenBSD-current], but has not been backported to OpenBSD 4.0 or 4.1 (and will never be to earlier, unsupported, versions). If you run OpenBSD 4.1 or older, you will need to update SDL manually. See [http://www.libsdl.org] for details on compiling.