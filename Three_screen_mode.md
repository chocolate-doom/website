{{Doomwiki|Three screen mode}}
The '''three screen mode''' of Chocolate Doom uses [[multiplayer]] mode to give an enlarged field of view. This is achieved by displaying the extended field of view sections via separate drone clients and their windows. The feature was originally found in early [[Doom:vanilla Doom|vanilla Doom]] versions, but it was removed from [[Doom:Versions_of_Doom_and_Doom_II#v1.2|versions 1.2]] and up.

== Demonstration video ==
{{#ev:youtube|https://www.youtube.com/watch?v=s2TG7VCms3Q|800x210}}

==Usage==
The three screen mode is activated by launching a [[multiplayer]] game and using the -left and -right [[command line arguments]] for the clients that will be used as the extended left and right views.  The extended view clients are drones and do not use regular player slots, which means three regular players can still join the game even after the drones have connected.

To start the game in three screen mode, first start the center screen as a server:

 chocolate-doom -server -window

While the game is waiting for you to start it, launch another instance as the left monitor:

 chocolate-doom -autojoin -left -window

and then do the same again for the right monitor:

 chocolate-doom -autojoin -right -window

then open the original [[:File:Multi-waiting.png|waiting screen]] window and press space to start the game. You should see three separate windows; move these to appropriate monitors and resize as appropriate.

[[Category:Features]]