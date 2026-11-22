---
redirect_from:
 - /wiki/index.php/Adding_your_gamepad
---
Chocolate Doom includes support for [gamepads](/Gamepad.md) and joysticks as input devices. However, every gamepad has a different arrangement of buttons, meaning that configuration is completely different from one type of controller to the next. To make setup simpler, Chocolate Doom includes preconfigured support for a selection of gamepads. You can help out by adding yours to the list.

## Already supported controllers {#already_supported_controllers}

Configurations have already been submitted for several different controllers; see the [gamepad](/Gamepad.md) page for a list.

## Needed information {#needed_information}

The following information is needed:

- The manufacturer/model number of the controller, along with a photo. It\'s usually fairly straightforward to find promotional photos online. This helps to show the layout of the controller.
- The name of the controller as it appears within the OS. For example, a Playstation 3 controller appears as \"PLAYSTATION(R)3 Controller\". This is shown by the joytest program; see below.
- The number of buttons, axes and hats, as shown by joytest.
- The location of each button, determined using the joytest program.
- The location of each hat, determined using the joytest program.
- The location of each axis, determined using the joytest program.

## Using the joytest program {#using_the_joytest_program}

**joytest** is a simple program that just listens for gamepad/joystick activity and tells you what you did. This allows you to determine how buttons are numbered, and so on. When you run it you will see output like the following:

       1 joysticks:
           #0: 'PLAYSTATION(R)3 Controller'
               axes: 4
               buttons: 19
               balls: 0
               hats: 0

This information is important; please include it in your report. A log of output from the program will be saved to the file \'joytest.log\'.

Compiled Windows binaries for the joytest program [can be downloaded here](http://www.chocolate-doom.org/joytest.zip). On other operating systems you\'ll need to compile it yourself (source code link is below).

### Step 1 {#step_1}

Go through each stick and D-pad on the device. In your report, it\'s important you describe where it\'s located. Move it up, down, left, and right. This should allow you to determine how it is represented. For example, if you push up, then down, you should see output like:

       0: Axis 1 pushed to extreme: 32767
       0: Axis 1 pushed to extreme: -30455

This would mean that the vertical axis on that joystick is axis #1, and that positive is up.

You may also see output like this, especially if you are examining a D-pad:

       0: Button 4 pressed
       0: Button 6 pressed

This means that this axis is represented by two buttons: button 4 for up and 6 for down.

You might also see output like this for D-pads:

       1: Hat 0 moved to LEFT
       1: Hat 0 moved to RIGHT
       1: Hat 0 moved to UP
       1: Hat 0 moved to DOWN

This means the stick/D-pad is represented by a hat. Include the hat number in the report (hat #0 in the example above).

### Step 2 {#step_2}

Go through each button on the device and press each in sequence. You will see output like this:

       0: Button 12 pressed
       0: Button 15 pressed
       0: Button 14 pressed
       0: Button 13 pressed

This will indicate how each button is numbered. In your report, give the button number and how it\'s labelled (\"1\", \"Triangle\", \"Start\", etc.). If there is no label for the button then describe where it\'s located on the controller (where it can be seen in the photo).

### Step 3 {#step_3}

Go through each hat and find how it\'s numbered. Move the hat and you should see output like this:

       1: Hat 0 moved to LEFT
       1: Hat 0 moved to RIGHT
       1: Hat 0 moved to UP
       1: Hat 0 moved to DOWN

In your report, describe the hat number (above, hat #0 is the one moved) and where it\'s located on the controller (where it can be seen in the photo).

### Step 4 {#step_4}

Press escape to exit the joytest program.

Email your report [to this address](mailto:fraggle@removethisbit.gmail.com) (removing the \'removethisbit\' part).

## External links {#external_links}

- [joytest Windows binary](http://www.chocolate-doom.org/joytest.zip)
- [joytest source code](https://github.com/chocolate-doom/joytest) on Github.
