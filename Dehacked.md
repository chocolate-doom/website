---
redirect_from:
 - /wiki/index.php/Dehacked
categories:
 - Features
---
{% image filename:Chocolate-batman-doom.png %}
[Batman Doom](https://doomwiki.org/wiki/Batman_Doom), a TC which makes heavy use of dehacked, playing under Chocolate Doom.
{% endimage %}

{% include Doomwiki.md page="DeHackEd" %}
Dehacked with Vanilla Doom required patching the program to modify its behaviour. Chocolate Doom includes built-in dehacked support and supports loading dehacked patches via the command-line.

To load a dehacked patch, use the *\"-deh\"* command-line parameter. For example, to load the file \"suprwep8.deh\", use the following command-line parameter:

    chocolate-doom -deh suprwep8.deh

Chocolate Doom\'s dehacked support is entirely new code. It is closer in behavior to the original dehacked than the dehacked engines in other ports. It is also stricter in what it accepts as valid input. For example, in DOS dehacked the lengths of string and cheat replacements are limited by the layout of the Vanilla Doom executables. Chocolate Doom imposes the same limits.
