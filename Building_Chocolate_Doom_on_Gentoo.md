A Chocolate Doom ebuild for Gentoo is located in the Sunrise overlay. Just add Sunrise overlay to your tree:

  games-fps/chocolate-doom 

to your /etc/portage/package.unmask file and

  <games-fps/chocolate-doom-9999

to your /etc/portage/package.keywords file and finally:

  emerge -av chocolate-doom