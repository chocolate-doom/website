---
redirect_from:
 - /wiki/index.php/Setup/Start_multiplayer_game
 - /setup-multi-start
categories:
 - Setup_tool
---
{% image filename:Start_Multiplayer_Game.png width:300 %}
{% endimage %}

The **Start multiplayer game** window has many options for enabling play between multiple people. The exact contents of this window will change depending on the game you are running; Doom, Heretic, Hexen, and Strife all have their own properties, but the basics remain the same for each of them.

At the top of the window, if you have multiple games available, you can switch between them; for example, between Doom and Doom II. If you are playing Hexen, an option for character class will appear. Below that, you may set the skill level, starting level, game type, and how long each level will last before it is automatically exited.

The game type for Doom is peculiar, there are two deathmatch options. In Deathmatch 2.0, items and weapons will respawn 30 seconds after they were picked up. In the normal Deathmatch mode, items do not respawn and weapons are limited to being picked up by each player once per lifetime.

## Monster options {#monster_options}

Here, you may configure whether monsters are spawned in the levels or not. For co-operative game modes, this is almost always desired. In deathmatch, most games since Quake do not have monsters in deathmatch modes, and indeed, many Doom players prefer to disable them in deathmatch as well.

*Fast monsters* does exactly what it says. Monsters will generally move and attack at a much faster pace.

*Respawning monsters* will cause them to resurrect 30 seconds after being killed, generally making co-op games harder than normal.

## Advanced

*UDP port* sets the port that the server runs on. This does not normally need to be changed, but you may change it in order to host multiple games on a single computer, or if some other program has already claimed port 2432.

*Register with master server*: If you do not wish for people to automatically discover and join your server, you may uncheck this. Other players will be required to type your server\'s address in order to join.

You can also add extra command line parameters and WAD files. See [Setup/Extra dialogs](/Setup__Extra_dialogs.md).
