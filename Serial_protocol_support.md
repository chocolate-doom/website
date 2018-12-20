{{Future feature}}
'''Serial protocol support''' allows Chocolate Doom to play multiplayer games with DOS [[doom:vanilla Doom|vanilla Doom]].

The feature implements the same communications protocol used by DOS Doom's SERSETUP program for two player modem and null modem games. It is implemented over [[wikipedia:Transmission Control Protocol|TCP]], compatible with [[wikipedia:DOSBox|DOSBox]]'s built-in modem emulation. The result is that DOS Doom in DOSBox can "dial up" a Chocolate Doom server, and vice versa.

With a TCP/serial bridge (like [http://ser2net.sourceforge.net/ ser2net]), it should be possible for it to operate over a real serial cable.

== Video demonstration ==

{{#ev:youtube|t12zOpDh5Jk}}

== Configuration modes ==
[[File:Serial-diagram.png|thumb|right|Diagram of how serial protocol games may be set up.]]
Different configuration modes are supported:

1. Chocolate Doom "accepts call" from DOSBox peer:
:* Chocolate Doom listens on a TCP port for a connection
:* DOSBox emulated modem "dials" TCP port, and game is established.
2. Chocolate Doom "calls up" DOSBox peer:
:* DOSBox emulated modem "listens for call" by opening a TCP port
:* Chocolate Doom connects to TCP port, and game is established.
3. Chocolate Doom connects to serial/TCP bridge (eg. [http://ser2net.sourceforge.net/ ser2net]):
:* Chocolate Doom connects to ser2net TCP port.
:* TCP connection bridges to a physical serial connection (null modem cable)
:* At the other end of the null modem cable is a DOS machine running SERSETUP.EXE; game is established.

== External links ==

* [https://www.youtube.com/watch?v=t12zOpDh5Jk Youtube video] demonstration.