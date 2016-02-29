[[Image:Obituary.png|right|thumb|320px|Obituary running in Chocolate Doom.]]
'''Obituary''' is a [[doom:TC|TC]] by The Innocent Crew.  

Loading Obituary is unusual because it uses [[doom:NWT|NWT]] rather than DEUSF.  To play Obituary without the new weapons:

# Download {{idgames|file=levels/doom2/m-o/obtic11.zip|title=Obituary TC}}.
# Extract the .zip file containing the game files.
# Run with these [[command line arguments]]:

 chocolate-doom -deh obtic1.deh -nwtmerge obtic2.wad -file obtic1.wad obtic2.wad

To play Obituary with the new weapons:

* Download {{idgames|file=levels/doom2/m-o/obtic11.zip|title=Obituary TC}} and extract the .zip file.
* Run NWT (which comes included in the Obituary archive) with these command line arguments:

 nwt -join obtic2.wad obtic3.wad

* Run NWT a second time with these command line arguments:

 nwt -as obtic2.wad

* Run Chocolate Doom with the following command line arguments:

 chocolate-doom -deh obtic2.deh -file obtic1.wad obtic2.wad

[[Category:TCs]]