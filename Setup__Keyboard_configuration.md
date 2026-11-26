---
redirect_from:
 - /wiki/index.php/Setup/Keyboard_configuration
 - /setup-keyboard
categories:
 - Setup_tool
---
{% image filename:"Configure_Keyboard.png" width:"300" %}
{% endimage %}

The **Keyboard Configuration** window allows you to rebind key functions from their defaults, giving full control over how the game may be played on your particular system.

The defaults are identical to those found in the original versions of Doom, Heretic, Hexen, and Strife. In the early 1990s, mice were not as common as they are now, so they games were optimized for play on the keyboard alone. A common control scheme, popularized after the first [Quake](https://en.wikipedia.org/wiki/Quake_(video_game)) game was released and continuing to today in modern games, incorporates the following changes:

- **Move Forward**: W
- **Move Backward**: S
- **Strafe Left**: A
- **Strafe Right**: D
- **Use**: E
- **Jump**: SPACE

It is good to note the difference between *Turn* and *Strafe* in the controls: Turn pivots the player at the same point, altering the direction you face; whereas Strafe is the action that side-steps the player in one of the directions without changing direction. Additionally, the **Jump** function is only available in Hexen and Strife, unless you use [Crispy Doom](/Crispy_Doom.md).

When configuring a new key for an action, if that key is already being used for another action, the key will be unbound from that action, since usually you only want a key to perform a single action. However, sometimes players have unusual preferred configurations where they deliberately bind a single key to multiple actions. If you want to do this, select the action you want to configure, and hold down the shift key while pressing enter to choose a new key; the other action will not be unbound.

## More controls and other keys {#more_controls_and_other_keys}

{% image filename:"Configure_Keyboard_(Other_Keys).png" width:"300" %}
{% endimage %}

Chocolate Doom allows considerably more configuration than the original versions did, allowing you to reconfigure nearly every function possible in the game. This includes changing the weapon hotkeys and menu navigation, as well as additional functions the originals did not even include: previous and next weapon, and a screenshot key available at all times.

## Miscellaneous

**Always run** toggles whether the player is permanently in the running state, without the slower walking speed available. This is actually implemented as an emulation of a bug in the original versions: where setting the joystick run button to an invalid high number causes the game to always have it enabled.

**Use native keyboard mapping** toggles the behavior between the original and a more sensible one. The original DOS Doom always assumes a US keyboard layout; on other keyboard layouts the wrong keypress may be registered. For example, German keyboards use a QWERTZ rather than a QWERTY layout where the Z and Y keys are reversed. In DOS Doom, when the Z key is pressed, a \'Y\' will be typed, as though a US keyboard was being used. This can be frustrating for non-US users when typing in savegame names or multiplayer messages. Turning on this option uses the correct keyboard mapping and fixes this problem.

## Test

You may use the Test option to test your changes in-game, without making the configuration permanent first.
