[[File:Setup_program.png|thumb|right|350px|The setup program, running on Mac OS X.]]
The '''setup program''' is Chocolate Doom's configuration utility. Reproducing the look and feel of the original Doom [[doom:Setup_program|setup program]], it provides equivalent functionality, with support for some of Chocolate Doom's more advanced features. It is based on [[libtextscreen]], a Chocolate Doom library that emulates a DOS text mode display.

== Configuration menus ==

The setup program is menu-driven. The main menu provides configuration options for several of the main features:

* '''[[Setup/Display configuration|Configure Display]]''' - how Chocolate Doom is displayed: whether the game should run full-screen or in a window, and the resolution to use.
* '''[[Setup/Sound configuration|Configure Sound]]''' - the various different options for sound effects and music.
* '''[[Setup/Keyboard configuration|Configure Keyboard]]''' - which keys are mapped to which in-game functions. 
* '''[[Setup/Mouse configuration|Configure Mouse]]''' - which buttons are mapped to which in-game functions, plus other features such as mouse speed and acceleration, whether vertical mouse movement is enabled, etc.
* '''[[Setup/Gamepad configuration|Configure Gamepad/Joystick]]''' - allows a game controller to be configured, buttons to be mapped to in-game functions, etc.
* '''[[Setup/Compatibility|Compatibility]]''' - a small set of compatibility options that can be disabled if painstakingly exact emulation of Vanilla Doom's behavior is not desired.
* '''[[Setup/Multiplayer configuration|Multiplayer configuration]]''' - player name and chat macros.

== Multiplayer launch ==

The setup program includes two menu items for launching multiplayer games. These are, ''Start a network game'' and ''Join a network game''.

Setting up a network game involves finding other players to play with and coordinating with them to start the game. One player must act as the server; this player chooses the ''Start a network game'' option. A menu provides various configurable options that can be set for the game to be played, including the game type (cooperative vs. deathmatch) and the level to start on. Clicking the "Start" button launches the server.

Other players can then connect to this server using the ''Join a network game'' option. This window gives the option to find a server on the Internet or on the local network. If the server has been set up correctly, it should appear in the list. If not, there may be additional firewall configuration steps needed; see the "[[Multiplayer]]" page.