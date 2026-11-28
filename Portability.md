---
redirect_from:
 - /wiki/index.php/Portability
categories:
 - Features
---
{% image filename:"Chocolate_Doom_Solaris.jpg" %}
Chocolate Doom running on Solaris 2.6 on a SPARC processor.
{% endimage %}

One of the main design aims of Chocolate Doom is to be **portable**, running on as many different processor architectures and operating systems as possible. To help achieve this, it is based on [LibSDL](http://www.libsdl.org/), which provides a cross-platform interface for developing portable multimedia applications such as games.

To date, Chocolate Doom has been successfully run on:

- Microsoft Windows
   - Windows XP
   - Windows Vista
   - Windows 7
- Linux (various different distributions, Intel x86, x86-64, ARM and PowerPC variants)
- BSD
   - FreeBSD
   - NetBSD
   - OpenBSD
- Solaris (Intel and SPARC variants)
- Mac OS X (Intel and PowerPC variants)
   - As of version 2.2.1, [Mac OS 10.7 or newer](https://github.com/chocolate-doom/buildscripts/commit/67bf4adb3261ca8f47a9d13853d63a2c13956aca) is required (notwithstanding the [LibSDL documentation](http://www.libsdl.org/download-2.0.php) stating 10.5 or newer).

Screenshots of Chocolate Doom running on various different platforms can be seen [here](/Category:Platform_screenshots.md).

Older editions of Windows, such as Win9x and NT 3.51, are now [unsupported](https://github.com/chocolate-doom/chocolate-doom/issues/834) but may still be usable. [Version 2.2.1 or earlier](https://github.com/chocolate-doom/old-releases) of Chocolate Doom is recommended.

It will likely run on various other operating systems - see the [list of platforms supported by SDL](http://www.libsdl.org/).
