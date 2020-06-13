
A Chocolate Doom ebuild for Gentoo is available at the Guru overlay, emerge eselect-repository to manage overlays:

  emerge -av app-eselect/eselect-repository

After installing eselect-repository, enable the "guru" overlay:

  eselect repository enable guru

Add

  games-fps/chocolate-doom ~amd64

to your /etc/portage/package.accept_keywords file, update your repositories and emerge Chocolate Doom:

  emerge --sync
  emerge -av chocolate-doom

{{GEBB ad}}
== Tracking Git ==

To keep up to date with the latest bleeding-edge version from git repository add

  games-fps/chocolate-doom **

to your `/etc/portage/package.accept_keywords` file and re-emerge Chocolate Doom. Keep in mind that you need to re-emerge *-9999 ebuilds manually so as to keep them updated.

[[Category:Build instructions]]