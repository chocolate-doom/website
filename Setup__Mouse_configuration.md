[[File:Configure Mouse.png|thumb|right|300px]]
The '''Mouse Configuration''' window allows you to change many settings for mouse control in Chocolate Doom.

The ''Enable mouse'' toggle should explain itself: if you toggle it off, the mouse cannot be used at all to control the game, leaving you with [[Setup/Keyboard configuration|keyboard]] or [[Setup/Gamepad configuration|gamepad]] control only.

The ''Allow vertical mouse movement'' toggle determines whether the mouse may be used to move the player forward and backward. This is primarily useful for [[Wikipedia:Trackball|trackball]] players, the type of device [[Doom:John Romero|John Romero]] played the game with when it was new. Toggling this off has the same effect as using the [http://www.doomworld.com/idgames/?file=utils/misc/novert.zip Novert] program for DOS with the original games: the mouse's movement only affects turning left and right, and not moving forward and backward.

The ''Grab mouse in windowed mode'' toggle changes whether the mouse can escape the game window when not in fullscreen mode. Turning this off probably makes the game very difficult to play, but can facilitate switching to other applications much more easily.

The ''Double click acts as "use"'' toggle determines whether double-clicking the secondary mouse button is the same as pressing the use key (for opening doors, pressing switches, et al).

== Mouse motion ==

There are three settings: mouse speed, acceleration and acceleration threshold. When you move your mouse, the amount you move the mouse is multiplied by the mouse speed. So, if you double the mouse speed value, it should move at twice the speed. The complicated part is the acceleration.

When you're playing an FPS, you sometimes want precise aiming, and sometimes want to make large movements. If a monster started shooting at you from behind, you'd want to move the mouse fast to turn round quickly, for example. The problem is that these are conflicting requirements: you could increase the mouse speed to allow yourself to make quick turns with a small movement of the mouse, but then you'd lose the precision you need to do precise aiming.

What acceleration does is apply an extra speed-up when you make quick turns. When the speed you're moving the mouse exceeds the threshold, the acceleration factor is applied. So if the acceleration was 2.0, for example, the amount you move when you exceed the threshold counts for twice what it does below the threshold. Setting acceleration to 1.0 effectively "disables" acceleration.

The setup tool has an option to help you configure the threshold and acceleration to your comfort. If you go into the "configure mouse" dialog, there's a button to test your settings at the bottom of the window. It launches Doom and shows a "thermometer" type bar that shows how fast you're moving the mouse. There's a vertical bar that shows the acceleration threshold, so that you can see when you're exceeding it.

== Buttons ==
[[File:Configure Mouse (Additional).png|thumb|right|300px]]
You may also configure what the particular buttons do. In the original games, most mice did not exceed three buttons (and scroll wheels were not a thing yet), so the controls on the mouse where fairly simplistic. Chocolate Doom expands on these capabilities by allowing you to bind additional controls, either to the same primary two or three buttons, but to many more if your mouse supports them. The scroll wheel directions count as two separate buttons, and may be used themselves, including previous and next weapon controls.

== Test ==
You may use the Test option to test your changes in-game, without making the configuration permanent first.

[[Category:Setup tool]]