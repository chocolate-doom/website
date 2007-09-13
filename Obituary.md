[[Image:Obituary.png|right|thumb|Obituary running in Chocolate Doom.]]
'''Obituary''' is a [[doom:TC|TC]] by The Innocent Crew.  

Loading Obituary is unusual because it uses [[doom:NWT|NWT]] rather than DEUSF.  To play Obituary without the new weapons:

1. [http://www.doomworld.com/idgames/index.php?id=2021 Download] the Obituary TC and extract it.

2. Run with these [[command line arguments]]:

 chocolate-doom -deh obtic1.deh -nwtmerge obtic2.wad -file obtic1.wad obtic2.wad
(Currently, you must use the latest version from Subversion to do this).


To play Obituary with the new weapons:

1. [http://www.doomworld.com/idgames/index.php?id=2021 Download] the Obituary TC and extract it.

2. Run NWT (which comes included in the Obituary archive) with these command line arguments:

 nwt -join obtic2.wad obtic3.wad

3. Run NWT a second time with these command line arguments:

 nwt -as obtic2.wad

4. Run Chocolate Doom with the following command line arguments:

 chocolate-doom -deh obtic2.deh -file obtic1.wad obtic2.wad

[[Category:TCs]]