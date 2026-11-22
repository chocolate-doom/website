---
redirect_from:
 - /wiki/index.php/Raven-branch
categories:
 - Inactive_branches
---
{% capture caption %}
Chocolate Hexen, running from the raven-branch code.
{% endcapture %}
{% include Image.md caption=caption image="Chocolate-hexen.png" %}
{% capture caption %}
Chocolate Heretic, running from the raven-branch code.
{% endcapture %}
{% include Image.md caption=caption image="Chocolate-heretic.png" %}

**raven-branch** was a branch in the Chocolate Doom Subversion repository that integrated the source code to the Raven games [Heretic](https://doomwiki.org/wiki/Heretic) and [Hexen](https://doomwiki.org/wiki/Hexen) into the Chocolate Doom code base. The branch was started following the resolution of the [source code licensing issue](https://doomwiki.org/wiki/Raven_source_code_licensing) with the Raven code.

The branch is now obsolete: [v2-branch](/V2-branch.md) followed on from raven-branch, integrating the work that was done in parallel on [strife-branch](/Strife-branch.md).

### Design

To support the games, radical restructuring of the Chocolate Doom source code was necessary. The purpose of this was to separate the existing code into common and Doom-specific parts. The Heretic and Hexen code were then updated to interface with the common code.

The approach taken by Chocolate Doom differs from the common approach taken by other ports to support Heretic and Hexen. For example, [ZDoom](https://doomwiki.org/wiki/ZDoom) and [Eternity](https://doomwiki.org/wiki/Eternity_Engine) have taken the approach of creating a combined engine that is generic enough to support all games. This approach reduces code duplication. However, Chocolate Doom\'s goals are to preserve the behavior of the original games as closely as possible. To achieve this, the source code to the three games is maintained separately, depending only on some common code that is shared between them. This approach results in duplicated code, with the advantage of avoiding large changes that might affect compatibility.

The portions of code that are common to the three games are currently:

- System-specific code (i\_\*):

:\* ENDOOM support

:\* Joystick

:\* Low-level SDL video code (i_video.c) and scaling (i_scale.c)

:\* Low-level sound effect and music code

:\* Timer code (i_timer.c)

:\* Endianness conversion (i_swap.h)

: New low-level code:
  - CD sound (i_cdmus.c) - for Hexen
  - Hexen startup video code (i_videohr.c)

- Basic event handling (d_event.c) and ticcmd definitions (d_ticcmd.h) - needed for networking.
- Entry point (i_main.c) and command line argument code (m_argv.c)
- Configuration file parsing
- Fixed point math functions (m_fixed.c)
- Network subsystem (net\_\*)
- Trigonometry lookup tables (tables.c)
- Video functions (drawing patches, etc) (v_video.c)
- WAD code (w\_\*)
- Zone memory subsystem (z\_\*)

### Current status {#current_status}

raven-branch is now obsolete. Version 2.0 of Chocolate Doom integrated the changes made on raven-branch and now includes support for Heretic and Hexen.

## External links {#external_links}

- {% include Gitbranch.md name="raven-branch" %} - final version, before the merge into [v2-branch](/V2-branch.md).
