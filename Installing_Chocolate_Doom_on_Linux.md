[[File:Chocolate-doom-linux.png|thumb|right|Chocolate Doom running on Ubuntu 8.04.]]
'''Installing Chocolate Doom on Linux''' is usually a matter of using your Linux distribution's package manager. Most popular Linux distributions have a Chocolate Doom install package.

The Chocolate Doom project does not distribute Linux binaries ([[FAQ#Why_do_you_not_distribute_Linux_binaries?|see here for why]]).

== Linux distributions ==

=== Arch Linux ===
<nowiki>yaourt -S chocolate-doom</nowiki>

=== Debian ===

Debian has a package named [https://packages.debian.org/stable/chocolate-doom chocolate-doom]. To install, run this command as root:

  apt-get install chocolate-doom

Note that in releases of Debian before v9, you must enable the ''contrib'' area to access the package.

=== Linux Mint ===

Linux Mint has [https://community.linuxmint.com/software/view/chocolate-doom a chocolate-doom package]. To install:

  sudo apt-get install chocolate-doom

=== Ubuntu ===

Instructions are the same as for Debian, since Ubuntu is a Debian fork.

=== Fedora ===
There's a chocolate-doom package in Fedora. To install, use the yum package manager:

  yum install chocolate-doom

=== Gentoo ===
See [[Building Chocolate Doom on Gentoo]].

=== NixOS ===
=== OpenSuSE ===

== BSD ==

=== FreeBSD ===
There is a chocolate-doom package in the FreeBSD ports collection. To add the package:

  pkg install chocolate-doom

Or to build the port freshly:

  cd /usr/ports/games/chocolate-doom/ && make install clean

=== OpenBSD ===
There is a chocolate-doom package in the OpenBSD ports collection. To install:

  pkg_add chocolate-doom

==  Generic ==

See [[Building Chocolate Doom on Linux (generic)]] for instructions on how to build from source.