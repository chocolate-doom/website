[[File:Crispy-doom.png|thumb|right|The Crispy Doom icon]]
{{Doomwiki}}
Crispy Doom is a limit-removing enhanced-resolution Doom source port based on [[Chocolate Doom]].
<br />Its name means that its internal 640x400 resolution looks "crisp" and is also a slight [http://www.mathsisfun.com/recipie.html reference] to its origin.

== Synopsis ==

Crispy Doom is a friendly fork of [[Chocolate Doom]] that provides a higher display resolution, removes the [[doom:Static_limits|static limits]] of the Doom engine and offers further optional visual, tactical and physical enhancements while remaining entirely config file, savegame, netplay and demo compatible with the original.

== Contact ==

The canonical homepage for Crispy Doom is https://github.com/fabiangreffrath/crispy-doom
<br />Crispy Doom is maintained by [mailto:fabian@greffXremovethisXrath.com Fabian Greffrath]. 

Please report any bugs, glitches or crashes that you encounter to the GitHub [https://github.com/fabiangreffrath/crispy-doom/issues Issue Tracker].

== Download ==

Binaries for Windows XP / Vista / 7 / 8.1 / 10 (both x86 and x64 editions) are available here: 
<br />http://www.greffrath.com/~fabian/crispy-doom_5.3.zip

A supplementary Music Pack that contains the fluidsynth library and a freely-available soundfont is available here:
<br />http://www.greffrath.com/~fabian/crispy-doom-music-pack_5.1.zip

Daily builds of Crispy Doom can be found here:
http://latest.chocolate-doom.org/

Crispy Doom can play nearly all variants of Doom. If you don't own any, you may download the [http://cdn.debian.net/debian/pool/non-free/d/doom-wad-shareware/doom-wad-shareware_1.9.fixed.orig.tar.gz Shareware version of Doom], extract it and copy the DOOM1.WAD file into your Crispy Doom directory. Alternatively, you may want to play Crispy Doom with [[Freedoom]] and a MegaWAD.

=== Sources ===

The Crispy Doom source code is available at GitHub: https://github.com/fabiangreffrath/crispy-doom.
It can be [https://github.com/fabiangreffrath/crispy-doom/releases downloaded in either ZIP or TAR.GZ format] 
or cloned via

 git clone https://github.com/fabiangreffrath/crispy-doom.git

Compilation on Debian/Ubuntu systems should be as simple as

 sudo apt-get install build-essential automake
 sudo apt-get build-dep chocolate-doom

to install the prerequisites and then

 cd crispy-doom
 autoreconf -vif
 ./configure
 make

After successful compilation the resulting binaries can be found in the <tt>src/</tt> directory.

[[Category:Forks]]