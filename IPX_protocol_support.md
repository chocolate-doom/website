---
redirect_from:
 - /wiki/index.php/IPX_protocol_support
categories:
 - Future_features
---
{% include Future_feature.md  %}
**IPX protocol support** allows Chocolate Doom to play multiplayer games with DOS [vanilla Doom](https://doomwiki.org/wiki/vanilla_Doom).

IPX protocol support is implemented via [DOSBox](https://en.wikipedia.org/wiki/DOSBox)\'s IPX network tunneling protocol, allowing Chocolate Doom to connect to a DOSBox IPX server. Chocolate Doom is able to set up games with the DOS IPXSETUP tool that originally shipped with Doom, and games can contain a mixture of vanilla and Chocolate clients.

## Video demonstration {#video_demonstration}

{% include YoutubeEmbed.md p1="zs5tGIVV5ms" %}

## Configuration modes {#configuration_modes}

{% capture caption %}
Diagram of how IPX games may be set up with IPX protocol support.
{% endcapture %}
{% include Image.md caption=caption image="IPX-diagram.png" %}

Different configuration modes are supported:

1\. Chocolate Doom connects to a DOSBox IPX server:

:\* The server itself can act as a vanilla Doom peer running IPXSETUP

:\* Other DOSBox clients can connect to the server and join the game

:\* Other Chocolate Doom peers can connect to the server and join the game.
2. Chocolate Doom connects to an [ipxbox server](https://github.com/fragglet/ipxbox):

:\* DOSBox clients can connect to the server and join the game

:\* Other Chocolate Doom peers can connect to the server and join the game.

:\* The server can be bridged to a physical IPX network, and real DOS machines on the same network can join the game.

## Setup instructions {#setup_instructions}

### Connecting to a DOSBox IPX server {#connecting_to_a_dosbox_ipx_server}

Start DOSBox and set up an IPX server with the following commands (in this example the server listens on port 9000):

    C:\>config -set ipx true

    C:\>ipxnet startserver 9000
    IPX Tunneling utility for DosBox

    IPX Tunneling Server started

    C:\>

Then start IPXSETUP; the following example is for three players:

    C:\>cd doom
    C:\DOOM>ipxsetup -nodes 3

To connect another DOSBox instance on IP address 10.0.0.1 do the following:

    C:\>config -set ipx true

    C:\>ipxnet connect 10.0.0.1 9000
    IPX Tunneling utility for DosBox

    IPX Tunneling Client connected to server at 10.0.0.1.

    C:\>cd doom
    C:\DOOM>ipxsetup -nodes 3

Then to connect a Chocolate Doom client do the following:

    $ chocolate-doom -dbconnect 10.0.0.1:9000 -nodes 3

### Setting up an ipxbox server {#setting_up_an_ipxbox_server}

Follow the instructions on the [ipxbox](https://github.com/fragglet/ipxbox) page for how to build a server and particularly, how to bridge the server to a physical network.

Once the server is running, DOSBox clients can connect to the server using the instructions above. Then on any DOS machines (emulated or real), invoke IPXSETUP:

    C:\DOOM>ipxsetup -nodes 3

To connect Chocolate Doom clients do the following:

    $ chocolate-doom -dbconnect 10.0.0.1:9000 -nodes 3

## External links {#external_links}

- [Youtube video](https://www.youtube.com/watch?v=zs5tGIVV5ms) demonstration.
