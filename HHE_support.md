---
redirect_from:
 - /wiki/index.php/HHE_support
categories:
 - Features
---
{% image filename:H-army.png %}
H-ARMY.HHE changes enemies to appear as additional players
{% endimage %}

[Chocolate Heretic](/Chocolate_Heretic.md) includes support for **HHE patches**, which are the Heretic equivalent of [dehacked](/Dehacked.md) patches. To load HHE patches, use the same parameter as for Dehacked, i.e. `-deh`.

As far as is known, Chocolate Heretic is the first source port to support loading of HHE patches. HHE support is significantly more difficult to implement than dehacked support, as the HHE patch format has a strong dependency on the DOS Heretic executables. Some patches will work only with one particular version of Heretic, and will not work with others. Chocolate Heretic aims to support patches created for all three Heretic versions (v1.0, v1.2, v1.3). A command line option, **-hhever** allows the version to emulate to be specified. For example, to load patches made for Heretic v1.2, use `-hhever 1.2`

## See also {#see_also}

- [Dehacked](/Dehacked.md)
- [Chocolate Heretic](/Chocolate_Heretic.md)
- [Raven-branch](/Raven-branch.md)

## External links {#external_links}

- {% include Idgames.md file="utils/exe_edit/hhe11" title="HHE v1.1" %} on idgames.
- [ETTiNGRiNDER\'s page on HHE](http://ettingrinder.youfailit.net/heretic-hhe.html).
