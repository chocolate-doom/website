[[Image:Chocolate-doom-obsd.png|right|thumb|Chocolate Doom on OpenBSD]]
These are the build instructions for [http://www.OpenBSD.org/ OpenBSD].
=== Requirements ===
In order to compile Chocolate Doom, you will need the following (see [http://www.openbsd.org/faq/faq15.html#PkgMgmt] for installing packages on OpenBSD):
* X.Org/Xenocara, if you do not have it please see [http://www.openbsd.org/faq/faq4.html#AddFileSet] and install the x*.tgz file sets.
* Base compiling environment (gcc must be installed), if you do not have it see [http://www.openbsd.org/faq/faq4.html#AddFileSet] and install the comp??.tgz file set.
* autoconf - There are multiple versions available, this guide was specifically tested with autoconf-2.61p1.
* automake - There are multiple versions available, this guide was specifically tested with automake-1.9.6p1.
* SDL - you must have installed at least sdl (theres two flavors, -esd and -sun, I don't think it'd make a difference but for reference, I have -sun installed), sdl-mixer, and sdl-net.
** For Chocolate Doom V3 onwards, you need sdl2, sdl2-mixer, sdl2-net instead.
* Git - only if you need to compile the latest and greatest source code.

=== Compiling the source code from official release ===
Download the latest source code release from [http://github.com/chocolate-doom/chocolate-doom Github] and extract it with <tt>tar xzf chocolate-doom-x.y.z.tar.gz</tt>
 cd chocolate-doom-1.2.1
 ./configure --mandir=/usr/local/man
   # The option here allows you to view the manual pages on OpenBSD with [http://www.openbsd.org/cgi-bin/man.cgi?query=man man(1)]
 make
 sudo make install
Enjoy!

=== Compiling the source code from Git ===

==== Fetching the source code via Git ====
git clone https://github.com/chocolate-doom/chocolate-doom

==== Compiling ====
Unlike most Linux systems, OpenBSD does not have AUTOMAKE_VERSION or AUTOCONF_VERSION automatically set (as it does not include autoconf or automake in the base system anyhow). These will need to be set first.
 export AUTOMAKE_VERSION=1.9 # Change to your native automake version
 export AUTOCONF_VERSION=2.61 # Change to your native autoconf version
 ./autogen.sh --mandir=/usr/local/man
   # If you would like to install to any directory than /usr/local, add --prefix=/directory; change the mandir too
   # By default OpenBSD does not check /usr/local/share/man, which is where it would normally install the manpage
 make
 sudo make install # Or use su, or run as root, or just `make install` if you're installing to $HOME

<!-- this will become unnecessary for any releases since 2.2.1, no longer install to /usr/games -->Also unlike most Linux systems, neither /usr/games nor /usr/local/games is set by the shell by default in OpenBSD. You can either add those paths to your $PATH automatically ($HOME/.kshrc, $HOME/.bash_profile, etc), or copy the binaries to /usr/bin or /usr/local/bin (your preference).

Ideally, you should copy your IWADs to /usr/local/share/games/doom, as that would be the (default) directory Chocolate Doom will look for the files.

=== TiMidity ===
If running OpenBSD 4.2 or higher, install TiMidity to play background music.  Older versions of OpenBSD contain a broken sdl-mixer package which will crash Doom ports (see [http://bugzilla.libsdl.org/show_bug.cgi?id=118]); if you must have TiMidity installed on an older release, you can just disable the background music via chocolate-setup to enjoy a crash-free experience.

[[Category:Build instructions]]