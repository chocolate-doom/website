'''Statcheck''' is a regression testing tool that uses thousands of levels from the [[doom:Compet-N|Compet-N]] demo archive to check for demo sync bugs in Chocolate Doom.

== Background ==

Compatibility is an important feature of Chocolate Doom, and this includes the ability to play back [[doom:Vanilla Doom|Vanilla Doom]] demo files. There has long been a vibrant community of speedrunners recording Doom demo files; the Compet-N archive contains thousands of such demos.

An obscure feature of Vanilla Doom is support for [[doom:Statistics driver|external statistics drivers]] which allow the end-of-level statistics to be dumped to an external program for processing. A proof of concept example of a statistics driver was first published in 2007 as ''statdump.exe'', a simple program that saves a text file containing the statistics data.

Combined with demo playback, this external driver was used to gather statistics data for every demo in the Compet-N archive, from Vanilla Doom running inside DOSbox. Chocolate Doom now includes the ability to dump the same statistics data to a file, meaning that it is possible to do a direct (but basic) comparison between the behavior of Vanilla Doom and Chocolate Doom: if demo sync breaks, the output will almost certainly stop matching the vanilla output.

Statcheck is therefore a Python script that will automatically run Chocolate Doom over all of the demos from the Compet-N archive and check that the output is as expected.

=== Limitations ===

The tool has some limitations:
* A mismatch of statdump outputs indicates a desync; however, a match does not prove that the demo ''did not'' desync. The statdump format only gives very general statistics about the completed levels (ie. information from the intermission screens). It is assumed that in the majority of cases, a desync will be significant enough that the player will not complete the level, or that the statistics will not match.
* Statistics are only gathered when the intermission screen is displayed; because of this, it is not possible to gather statistics from demos set on Doom II MAP30, or level 8 of any of the Doom I episodes.

== Configuring statcheck ==

Configuring statcheck is intended to be relatively simple. You will need the following:

* A version of Chocolate Doom to test. By default, a <code>chocolate-doom</code> binary found in <code>PATH</code> will be used if one is found
* Copies of the commercial IWAD files:
:* doom.wad
:* doom2.wad
:* tnt.wad
:* plutonia.wad
* GNU make
* Git
* Python 3
* Python 3 YAML library (on Debian systems this is <code>python3-yaml</code> for example)

=== Instructions ===

First clone the statcheck repository from Github:

<pre>
git clone https://github.com/chocolate-doom/statcheck.git
</pre>

Next, copy in the IWAD files into the <code>iwads/</code> directory, eg.

<pre>
cp ~/mywads/{doom,doom2,tnt,plutonia}.wad iwads/
</pre>

You can then run <code>make check</code> to run the tests. It is recommended that you use the <code>-j</code> parameter to make use of all cores on your system:

<pre>
make -j `nproc` check
</pre>

It will take some time to run every demo; on a modern, fast machine it may take up to an hour for example, and on a more modest machine like a Raspberry Pi it may take even longer. At the end you should see the following output:

<pre>
diff --strip-trailing-cr -x .gitignore -u -r expected output
all tests passed
</pre>

=== Testing a specific binary ===

By default, statcheck looks in <code>PATH</code> for a version of <code>chocolate-doom</code> to test. To test a specific version, you can supply a version using the <code>SOURCE_PORT</code> on the command line:

<pre>
make -j `nproc` check SOURCE_PORT=/home/me/lemon-doom/src/lemon-doom
</pre>

== External links ==

* [https://github.com/chocolate-doom/statcheck Statcheck on github]