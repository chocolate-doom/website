{{Future feature}}
'''IPX protocol support''' allows Chocolate Doom to play multiplayer games with DOS [[doom:vanilla Doom|vanilla Doom]].

IPX protocol support is implemented via [[wikipedia:DOSBox|DOSBox]]'s IPX network tunneling protocol, allowing Chocolate Doom to connect to a DOSBox IPX server. Chocolate Doom is able to set up games with the DOS IPXSETUP tool that originally shipped with Doom, and games can contain a mixture of vanilla and Chocolate clients.

== Video demonstration ==

{{#ev:youtube|zs5tGIVV5ms}}

== Configuration modes ==

[[File:IPX-diagram.png|thumb|right|Diagram of how IPX games may be set up with IPX protocol support.]]
Different configuration modes are supported:

1. Chocolate Doom connects to a DOSBox IPX server:
:* The server itself can act as a vanilla Doom peer running IPXSETUP
:* Other DOSBox clients can connect to the server and join the game
:* Other Chocolate Doom peers can connect to the server and join the game.
2. Chocolate Doom connects to an [https://github.com/fragglet/ipxbox ipxbox server]:
:* DOSBox clients can connect to the server and join the game
:* Other Chocolate Doom peers can connect to the server and join the game.
:* The server can be bridged to a physical IPX network, and real DOS machines on the same network can join the game.

== External links ==

* [https://www.youtube.com/watch?v=zs5tGIVV5ms Youtube video] demonstration.