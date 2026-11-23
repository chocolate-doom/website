---
redirect_from:
 - /wiki/index.php/Serial_protocol_support
categories:
 - Future_features
---
{% include Future_feature.md  %}
**Serial protocol support** allows Chocolate Doom to play multiplayer games with DOS [vanilla Doom](https://doomwiki.org/wiki/vanilla_Doom).

The feature implements the same communications protocol used by DOS Doom\'s SERSETUP program for two player modem and null modem games. It is implemented over [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol), compatible with [DOSBox](https://en.wikipedia.org/wiki/DOSBox)\'s built-in modem emulation. The result is that DOS Doom in DOSBox can \"dial up\" a Chocolate Doom server, and vice versa.

With a TCP/serial bridge (like [ser2net](http://ser2net.sourceforge.net/)), it should be possible for it to operate over a real serial cable.

## Video demonstration {#video_demonstration}

{% include YoutubeEmbed.md id="t12zOpDh5Jk" %}

## Configuration modes {#configuration_modes}

{% capture caption %}
Diagram of how serial protocol games may be set up.
{% endcapture %}
{% include Image.md caption=caption image="Serial-diagram.png" %}

Different configuration modes are supported:

1. Chocolate Doom \"accepts call\" from DOSBox peer:
   - Chocolate Doom listens on a TCP port for a connection
   - DOSBox emulated modem \"dials\" TCP port, and game is established.
2. Chocolate Doom \"calls up\" DOSBox peer:
   - DOSBox emulated modem \"listens for call\" by opening a TCP port
   - Chocolate Doom connects to TCP port, and game is established.
3. Chocolate Doom connects to serial/TCP bridge (eg. [ser2net](http://ser2net.sourceforge.net/)):
   - Chocolate Doom connects to ser2net TCP port.
   - TCP connection bridges to a physical serial connection (null modem cable)
   - At the other end of the null modem cable is a DOS machine running SERSETUP.EXE; game is established.

## Setup instructions {#setup_instructions}

### DOSBox initiates \"call\" {#dosbox_initiates_call}

First set up Chocolate Doom to listen for a connection. For example, to listen on port 9000:

    $ chocolate-doom -dbanswer -port 9000
    [...]
    NET_Serial_Answer: Listening for connection.

Then start DOSBox, configure COM1 as a virtual modem and connect to the Chocolate Doom server (in the example, it is at address 10.0.0.1):

    C:\>config -set serial serial1 modem

    C:\>cd doom

    C:\DOOM>sersetup -dial 10.0.0.1:9000

After a few seconds of negotiation the game should start.

### Chocolate Doom initiates \"call\" {#chocolate_doom_initiates_call}

Start DOSBox and configure COM1 as a virtual modem which will listen for incoming calls on a particular TCP port (in this example, port 9000):

    C:\>config -set serial serial1 modem listenport:9000

Start SERSETUP with the `-answer` command line argument:

    C:\>cd doom

    C:\DOOM>sersetup -answer

SERSETUP should say \"Wait for ring\" to indicate that it is waiting for an incoming \"phone call\".

Then start Chocolate Doom with the `-dbdial` command line argument to connect to DOSBox (in this example, at address 10.0.0.2):

    $ chocolate-doom -dbdial 10.0.0.2:9000

After a few seconds of negotiation the game should start.

### Real DOS machine via ser2net bridge {#real_dos_machine_via_ser2net_bridge}

You will need a null modem cable. At one end will be a DOS machine with vanilla Doom installed, and at the other end will be a modern machine running a TCP/serial bridge server such as [ser2net](http://ser2net.sourceforge.net/).

On the DOS machine run SERSETUP, as though starting a null modem game:

    C:\>cd doom

    C:\DOOM>sersetup

At the other end, run Chocolate Doom with the `-dbdial` command line argument to connect to the serial server. For example if it is running on the same machine on port 9000:

    $ chocolate-doom -dbdial localhost:9000

After a few seconds of negotiation the game should start.

## External links {#external_links}

- [Youtube video](https://www.youtube.com/watch?v=t12zOpDh5Jk) demonstration.
