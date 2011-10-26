'''statcheck''' is a tool used for [[wikipedia:Regression testing|regression testing]] of Chocolate Doom. The tool compares Chocolate Doom's behavior with that of [[doom:Vanilla Doom|Vanilla Doom]].

Vanilla Doom has a little-known feature that allows an external driver to gather statistics about the levels that are completed while the game is played. A demonstration of this feature exists in the form of a tool named ''statdump.exe'', which dumps these statistics to a text file [http://www.doomworld.com/idgames/?id=16596]. Chocolate Doom has been extended to output summary files in the same format, via the ''-statdump'' command line parameter. By comparing the output from both, it is therefore possible to compare the behavior of Vanilla Doom and Chocolate Doom.

statcheck makes use of the [[doom:Compet-N|Compet-N]] archive, which contains thousands of demo files. The output from ''statdump.exe'' when playing these demos has been recorded, to form a database of "expected" outputs when playing these demos. The tool invokes Chocolate Doom to play back each of these demos, checking that the output matches the reference Vanilla Doom output.

== External links ==

* [https://github.com/fragglet/statcheck Statcheck on github]