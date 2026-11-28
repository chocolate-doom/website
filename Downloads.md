---
# The old Chocolate Doom website used to have a /downloads/ directory with
# release binaries. We now instead point to the releases page on Github.
# Here, we redirect that directory and the subdirectories for several recent
# releases to this page.
redirect_from:
 - /wiki/index.php/Downloads
 - /downloads/
 - /downloads/3.0.0/
 - /downloads/3.0.1/
---
Click below to download the latest release of Chocolate Doom (**version {{ site.relversion }}**, released {{ site.reldate }}). You can also read [the release notes for this release](https://github.com/chocolate-doom/chocolate-doom/releases/tag/chocolate-doom-{{ site.relversion }}) to find out what\'s new, along with this, an [autobuild of the port can be found here](http://latest.chocolate-doom.org/).

{% assign url="https://github.com/chocolate-doom/chocolate-doom/releases/download/chocolate-doom-" | append: site.relversion | append: "/chocolate-doom-" | append: site.relversion | append: "-win64.zip" %}
{% capture caption %}
**Microsoft Windows** binaries: choose the game you want to play:

* [Chocolate Doom](https://github.com/chocolate-doom/chocolate-doom/releases/download/chocolate-doom-{{ site.relversion }}/chocolate-doom-{{ site.relversion }}-win64.zip) for Windows
* [Chocolate Heretic](https://github.com/chocolate-doom/chocolate-doom/releases/download/chocolate-doom-{{ site.relversion }}/chocolate-heretic-{{ site.relversion }}-win64.zip) for Windows
* [Chocolate Hexen](https://github.com/chocolate-doom/chocolate-doom/releases/download/chocolate-doom-{{ site.relversion }}/chocolate-hexen-{{ site.relversion }}-win64.zip) for Windows
* [Chocolate Strife](https://github.com/chocolate-doom/chocolate-doom/releases/download/chocolate-doom-{{ site.relversion }}/chocolate-strife-{{ site.relversion }}-win64.zip) for Windows
{% endcapture %}
{% include Linksbox.md link=url image="Windows_logo.png" imgsize="64px" text=caption %}

{% capture caption %}
**Apple macOS**: Please use [Homebrew](https://brew.sh/) and install the **chocolate-doom** package.
What happened to the macOS package? [See here](https://github.com/chocolate-doom/chocolate-doom/issues/1698#issuecomment-3630035010).
{% endcapture %}
{% include Linksbox.md link="https://brew.sh/" image="Apple_logo.png" imgsize="64px" text=caption %}

{% capture caption %}
**Source code** (all platforms; [GNU GPL](https://en.wikipedia.org/wiki/GNU_General_Public_License) v2):

* [Chocolate Doom source code](https://github.com/chocolate-doom/chocolate-doom/archive/refs/tags/chocolate-doom-{{ site.relversion }}.tar.gz).
* [Git repository](https://github.com/chocolate-doom/chocolate-doom).
{% endcapture %}
{% include Linksbox.md link="https://opensource.org/" image="Open_source_logo.png" imgsize="64px" text=caption %}

{% capture caption %}
**Linux, BSD and other Unix-like systems**:
The Chocolate Doom project does not distribute binaries for these systems, but there are packages available in most Linux and BSD distributions. Check out [Installing Chocolate Doom on Linux](/Installing_Chocolate_Doom_on_Linux.md) for instructions.
{% endcapture %}
{% include Linksbox.md link="/Installing_Chocolate_Doom_on_Linux.md" image="Tux-and-beastie.png" imgsize="64px" text=caption %}

Chocolate Doom is [Open Source](https://opensource.org/osd) and [Free Software](https://www.gnu.org/philosophy/free-sw.html), licensed under the [GNU General Public License v2](https://www.gnu.org/licenses/gpl-2.0.html).

The OSI logo trademark is the trademark of Open Source Initiative.
