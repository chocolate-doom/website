A Chocolate Doom ebuild for Gentoo is located in the Sunrise overlay. Just add the sunrise overlay to your tree:

  layman -a sunrise

Add

  games-fps/chocolate-doom

to your /etc/portage/package.unmask file and emerge Chocolate Doom:

  emerge -av chocolate-doom

== Tracking Git ==

To keep up to date with the latest bleeding-edge version from git repository add

  games-fps/chocolate-doom **

to your `/etc/portage/package.keywords` file and re-emerge Chocolate Doom. Keep in mind that you need to re-emerge *-9999 ebuilds manually so as to keep them updated.

[[Category:Build instructions]]