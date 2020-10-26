[[Image:H-army.png|thumb|right|H-ARMY.HHE changes enemies to appear as additional players]]
[[Chocolate Heretic]] includes support for '''HHE patches''', which are the Heretic equivalent of [[dehacked]] patches. To load HHE patches, use the same parameter as for Dehacked, i.e. <code>-deh</code>.

As far as is known, Chocolate Heretic is the first source port to support loading of HHE patches.  HHE support is significantly more difficult to implement than dehacked support, as the HHE patch format has a strong dependency on the DOS Heretic executables.  Some patches will work only with one particular version of Heretic, and will not work with others.  Chocolate Heretic aims to support patches created for all three Heretic versions (v1.0, v1.2, v1.3).  A command line option, '''-hhever''' allows the version to emulate to be specified. For example, to load patches made for Heretic v1.2, use <code>-hhever 1.2</code>

== See also ==

* [[Dehacked]]
* [[Chocolate Heretic]]
* [[Raven-branch]]

== External links ==

* {{idgames|file=utils/exe_edit/hhe11|title=HHE v1.1}} on idgames.
* [http://ettingrinder.youfailit.net/heretic-hhe.html ETTiNGRiNDER's page on HHE].

[[Category:Features]]