---
redirect_from:
 - /wiki/index.php/Multiplayer
categories:
 - Features
---
{% image filename:"Multi-waiting.png" %}
Players connected to a server, waiting to start the game.
{% endimage %}

{% include Doomwiki.md  %}
Chocolate Doom has rewritten and enhanced multiplayer code that is designed to work better than the original multiplayer code found in Vanilla Doom. It is possible to play games over the Internet with other users.

## Comparison to Vanilla Doom {#comparison_to_vanilla_doom}

- Gameplay is identical to that of Vanilla Doom. Only the underlying technical details differ.
- Runs over [IP](https://en.wikipedia.org/wiki/Internet_Protocol), rather than the obsolete [IPX](https://en.wikipedia.org/wiki/Internetwork_Packet_Exchange) protocol used by Vanilla Doom. It is therefore possible to play on the Internet.
- Data is routed through a server, rather than the peer-to-peer system used by Vanilla Doom.
- Improved client synchronization code, for a smoother game.
- Fixes a bug with Vanilla Doom where the green player has slightly more latency than other players.
- The WAD files on clients are compared, to reduce the possibility of desync errors.

## Instructions for Internet play {#instructions_for_internet_play}

One player must act as the server and host the game. Ideally this should be someone on a high-bandwidth connection. To run a Chocolate Doom server over the Internet, you need to know your public IP address. Some broadband routers use [NAT](https://en.wikipedia.org/wiki/Network_address_translation), so the IP address you see in your OS may not be the same as your public IP address. The website [whatismyipaddress.com](http://whatismyipaddress.com/) will allow you to find out your public address.

Start a multiplayer server by running with the *-server* command line option. For example, to start a server for a deathmatch game:

    chocolate-doom -server -deathmatch

Other players can then connect to your server using the *-connect* command line option. For example, if the server\'s public IP address is *1.2.3.4*:

    chocolate-doom -connect 1.2.3.4

Once the server is started, you will be shown the waiting screen which lists all players currently connected. Once all players are present, click the \"start game\" button or press space bar to start the game.

{% image filename:"Doom-DM.png" width:"320" %}
Two players fighting in a deathmatch on Chocolate Doom.
{% endimage %}

Note: The smoothness of the game depends on all players who are playing. When playing multiplayer, it is advisable to **turn off any file sharing programs or downloads** which may affect the connection.

### Firewalls and port forwarding {#firewalls_and_port_forwarding}

If the other players are unable to connect to the server, it may be because there is firewalling software running on the server machine. You will need to disable this or to add a firewall exception for UDP port 2342.

Another common problem is routers with [NAT](https://en.wikipedia.org/wiki/Network_address_translation). It is common for modern broadband routers to use NAT to allow several machines on a home network to use a single public IP address. If this is the case you will need to configure your router to forward connections to the computer where the server is running. The port to forward is UDP port 2342. How to do this depends on your router - there is a good guide to port forwarding at [1](http://portforward.com/).

### Master server {#master_server}

Servers automatically register themselves with a master server on the Internet, to make it easier to locate servers to play on. A website at [2](http://master.chocolate-doom.org/) shows the currently active servers.

If you don\'t want your server to be listed on the master server, run it with the *-privateserver* option, eg.

    chocolate-doom -server -privateserver -deathmatch

## Instructions for LAN play {#instructions_for_lan_play}

To play Chocolate Doom on a local area network is straightforward. Start a server in the same way as for Internet play:

    chocolate-doom -server -deathmatch

Other players can then automatically join the server with the *-autojoin* command line option:

    chocolate-doom -autojoin

## Dedicated server {#dedicated_server}

If desired, clients can play through a dedicated server, rather than having one client act as the server. To start a dedicated server, either run `chocolate-doom -dedicated` or the standalone `chocolate-server.exe`.

Notes:

- The dedicated server does not control game parameters (deathmatch, skill level, etc). The first player to join a dedicated server becomes the \"controller\" and specifies the game parameters for all players.
- Once all players quit a game running on a dedicated server, the server reverts to \"listen\" mode, waiting for new players to join. So you can start a new game without needing to restart the server.

## Finding players {#finding_players}

There is the [Chocolate Doomslayers Discord guild](https://discord.gg/5M8K6vQ), the official Discord guild for the devilment of the port and other forks.

## See also {#see_also}

- [Three screen mode](/Three_screen_mode.md)
