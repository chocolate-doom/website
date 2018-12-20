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

== Setup instructions ==

=== DOSBox initiates "call" ===

First set up Chocolate Doom to listen for a connection. For example, to listen on port 9000:

 $ chocolate-doom -dbanswer -port 9000
 [...]
 NET_Serial_Answer: Listening for connection.

Then start DOSBox, configure COM1 as a virtual modem and connect to the Chocolate Doom server (in the example, it is at address 10.0.0.1):

 C:\>config -set serial serial1 modem
 
 C:\>cd doom
 
 C:\DOOM>sersetup -dial 10.0.0.1:9000

=== Chocolate Doom initiates "call" ===

Start DOSBox and configure COM1 as a virtual modem which will listen for incoming calls on a particular TCP port (in this example, port 9000):

 C:\>config -set serial serial1 modem listenport:9000

Start SERSETUP with the <tt>-answer</tt> command line argument:

 C:\>cd doom
 
 C:\DOOM>sersetup -answer

SERSETUP should say "Wait for ring" to indicate that it is waiting for an incoming "phone call".

Then start Chocolate Doom with the <tt>-dbdial</tt> command line argument to connect to DOSBox (in this example, at address 10.0.0.2):

 $ chocolate-doom -dbdial 10.0.0.2:9000

=== Real DOS machine via ser2net bridge ===

You will need a null modem cable. At one end will be a DOS machine with vanilla Doom installed, and at the other end will be a modern machine running a  TCP/serial bridge server such as [http://ser2net.sourceforge.net/ ser2net].

On the DOS machine run SERSETUP, as though starting a null modem game:

 C:\>cd doom
 
 C:\DOOM>sersetup

At the other end, run Chocolate Doom with the <tt>-dbdial</tt> command line argument to connect to the serial server. For example if it is running on the same machine on port 9000:

 $ chocolate-doom -dbdial localhost:9000

== External links ==

* [https://www.youtube.com/watch?v=t12zOpDh5Jk Youtube video] demonstration.