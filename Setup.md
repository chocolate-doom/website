---
redirect_from:
 - /wiki/index.php/Setup
 - /setup
categories:
 - Features
 - Setup_tool
---
{% include Image.md image="Chocolate-setup-icon.png" %}

The **setup program** is Chocolate Doom\'s configuration utility. Reproducing the look and feel of the original Doom [setup program](https://doomwiki.org/wiki/Setup_program), it provides equivalent functionality, with support for some of Chocolate Doom\'s more advanced features. It is based on [libtextscreen](/Libtextscreen.md), a Chocolate Doom library that emulates a DOS text mode display.

## Configuration menus {#configuration_menus}

{% capture caption %}
Main menu of the setup program.
{% endcapture %}
{% include Image.md caption=caption image="Setup_program.png" width="350" %}

The setup program is menu-driven. The main menu provides configuration options for several of the main features:

- **[Configure Display](/Setup__Display_configuration.md)** - how Chocolate Doom is displayed: whether the game should run full-screen or in a window, and the resolution to use.
- **[Configure Sound](/Setup__Sound_configuration.md)** - the various different options for sound effects and music.
- **[Configure Keyboard](/Setup__Keyboard_configuration.md)** - which keys are mapped to which in-game functions.
- **[Configure Mouse](/Setup__Mouse_configuration.md)** - which buttons are mapped to which in-game functions, plus other features such as mouse speed and acceleration, whether vertical mouse movement is enabled, etc.
- **[Configure Gamepad/Joystick](/Setup__Gamepad_configuration.md)** - allows a game controller to be configured, buttons to be mapped to in-game functions, etc.
- **[Compatibility](/Setup__Compatibility.md)** - a small set of compatibility options that can be disabled if painstakingly exact emulation of Vanilla Doom\'s behavior is not desired.
- **[Multiplayer configuration](/Setup__Multiplayer_configuration.md)** - player name and chat macros.

## Launching games {#launching_games}

The setup program can be used as a basic launcher for playing games, for both multiplayer and single-player modes.

- **[Start a Network Game](/Setup__Start_multiplayer_game.md)** - Start a multiplayer game that others can join
- **[Join a Network Game](/Setup__Join_multiplayer_game.md)** - Join a multiplayer game that was already set up
- **[Warp](/Setup__Level_Warp.md)** - Warp to a specific level in single-player mode

Difficulties in running and playing multiplayer games may be caused by firewalls on the server machine or port-forwarding issues behind NAT. See the [Multiplayer](/Multiplayer.md) page for more help.
