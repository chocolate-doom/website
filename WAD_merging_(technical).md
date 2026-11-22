---
redirect_from:
 - /wiki/index.php/WAD_merging_(technical)
---
This is an in-depth description of how the various [WAD merging](/WAD_merging_capability.md) algorithms function.

### DeuSF style {#deusf_style}

This is the mode used for the majority of TCs. The \"-merge\" command line parameter emulates the behavior of the \"-merge\" parameter to DeuSF, a cut-down version of DeuTex distributed specifically for merging sprites and flats into IWADs.

The PWAD is first added as a normal PWAD. The PWAD is searched for a sprite section (delimited with \"S_START\" and \"S_END\" or \"SS_START and \"SS_END\"). If found, the PWAD sprite section is removed from the internal WAD directory and the contents appended to the IWAD\'s sprite section. The IWAD sprites list is checked, and any sprites which have been replaced or made redundant by sprites from the PWAD are removed.

Similar rules are applied for flats. The PWAD is searched for a flats section (delimited with \"F_START\"/\"FF_START\" and \"F_END\"/\"FF_END\"), and the contents added to the IWAD flats section.

### NWT style {#nwt_style}
