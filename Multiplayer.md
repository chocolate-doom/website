[[File:Multi-waiting.png|thumb|right|Players connected to a server, waiting to start the game.]]
Chocolate Doom has rewritten and enhanced multiplayer code that is designed to work better than the original multiplayer code found in Vanilla Doom.  It is possible to play games over the Internet with other users.

== Comparison to Vanilla Doom ==

* Gameplay is identical to that of Vanilla Doom.  Only the underlying technical details differ.
* Runs over [[wikipedia:Internet Protocol|IP]], rather than the obsolete [[wikipedia:Internetwork Packet Exchange|IPX]] protocol used by Vanilla Doom.  It is therefore possible to play on the Internet.
* Data is routed through a server, rather than the <span class="plainlinks">[http://www.mycaal.com/<span style="color:black;font-weight:normal; text-decoration:none!important; background:none!important; text-decoration:none;">loan modification</span>] peer-to-peer system used by Vanilla Doom.
* Improved client synchronization code, for a smoother game.
* Fixes a bug with Vanilla Doom where the green player has slightly more latency than other players.
* The WAD files on clients are compared, to reduce the possibility of desync errors.

== Instructions for Internet play ==

To play Chocolate Doom over the Internet, you need to know your public IP address.  Some broadband routers use [[wikipedia:Network address translation|NAT]], so the IP address you see in your OS may not be the same as your public IP address. The website [http://whatismyipaddress.com/ whatismyipaddress.com] will allow you to find out your public address.

Start a multiplayer server by running with the ''-server'' command line option.  For example, to start a server for a deathmatch game:

 chocolate-doom -server -deathmatch

Other players can then connect to your server using the ''-connect'' command line option.  For example, if the server's public IP address is ''1.2.3.4'':

 chocolate-doom -connect 1.2.3.4

When all players have joined, click the "start game" button on the server.

=== Firewalls and port forwarding ===

If the other players are unable to connect to the server, it may be because there is firewalling software running on the server machine.  You will need to disable this or to add a firewall exception for UDP port 2342.

Another common problem is routers with [[wikipedia:Network address translation|NAT]].  It is common for modern broadband routers to use NAT to allow several machines on a home network to use a single public IP address.  If this is the case you will need to configure your router to forward connections to the computer where the server is running.  The port to forward is UDP port 2342. How to do this depends on your router - there is a good guide to port forwarding at [http://portforward.com/].

=== Master server ===

Servers automatically register themselves with a master server on the Internet, to make it easier to locate servers to play on.  A website at [http://master.chocolate-doom.org/] shows the currently active servers.

If you don't want your server to be listed on the master server, run it with the ''-privateserver'' option, eg.

 chocolate-doom -server -privateserver -deathmatch

== Instructions for LAN play ==

To play Chocolate Doom on a local area network is straightforward.  Start a server in the same way as for Internet play:

 chocolate-doom -server -deathmatch

Other players can then automatically join the server with the ''-autojoin'' command line option:

 chocolate-doom -autojoin

== See also ==

* [[Three screen mode]]

[[Category:Features]]