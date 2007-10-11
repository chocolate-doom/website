rictazeltrac
[[Image:chocolate-strain.png|right|thumb|STRAIN running under Chocolate Doom.]]
STRAIN is a 32-level TC by the Alpha Dog Alliance.  The following are instructions for running STRAIN under Chocolate Doom.

=== Windows instructions ===

Playing under Windows is straightforward:  

# Download [http://www.doomworld.com/idgames/index.php?id=8467 the TC] and extract the ZIP file.
# Run the ''unpack.bat'' batch file contained in the ZIP.
# Several files should be extracted.  Run with the following command line:

 chocolate-doom -deh strain.deh -merge strain.wad

=== Linux/Unix instructions ===

To play under Linux and other Operating Systems:

# Download [http://www.doomworld.com/idgames/index.php?id=8467 the TC] and extract the ZIP file.
# Join the multiple archive files together with the following command: <code>cat strain.001 strain.002 strain.003 strain.004 &gt; strain.exe</code>
# The file <code>strain.exe</code> is a self extracting LHA file.  To extract it, either:
#* Run <code>strain.exe</code> inside [http://dosbox.sourceforge.net/news.php?show_news=1 DOSBox] or another DOS emulator
#* Use a Unix LHA extractor, such as [http://www.infor.kanazawa-it.ac.jp/~ishii/lhaunix/ LHA for Unix].
# Run with the following command line:

 chocolate-doom -deh strain.deh -merge strain.wad

== External links ==
* [http://www.doomworld.com/ricrob/strain/strain.shtml STRAIN website]

[[Category:TCs]]