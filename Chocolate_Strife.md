---
redirect_from:
 - /wiki/index.php/Chocolate_Strife
categories:
 - Features
---
{% include Image.md image="Chocolate-strife-logo.png" %}

**Chocolate Strife** is a port of [Strife](https://doomwiki.org/wiki/Strife) to the Chocolate Doom codebase. The aim is to develop a Strife source port that conforms to Chocolate Doom\'s minimalist, historically-preserving [philosophy](/Philosophy.md).

The work to develop Chocolate Strife was performed by [James \"Quasar\" Haley](https://doomwiki.org/wiki/James_"Quasar"_Haley) and [Samuel \"Kaiser\" Villarreal](https://doomwiki.org/wiki/Samuel_"Kaiser"_Villarreal). It involved a painstaking reverse engineering project that recreated the Strife source code from scratch from the original DOS binaries.

## History

<div style="clear: right; float: right; margin: .5em 0 1.2em 1.4em;">

{% include YoutubeEmbed.md id="_hgPQ3IRssM" size="400x300" right="1" %}

</div>

The source code for Strife is believed to have been lost, which means, unlike the code for all the other commercial DOOM-engine games, it cannot be released. The only access we to the code is the binary executable file. Reverse engineering tools were employed to disassemble and decompile the executables, which were cross-referenced against the Linux DOOM and DOS Heretic sources and painstakingly combed over multiple times, instruction-by-instruction, to ensure that the resulting Chocolate-Doom-based executable is as close as possible to the original.

In 2014, Chocolate Strife was used as the base for [Strife: Veteran Edition](/Strife:_Veteran_Edition.md), released for sale [on Steam](http://store.steampowered.com/app/317040/). This re-release was the first time the game was made generally available on the market again, after being stuck in limbo for more than a decade. The new version was developed by Chocolate Strife\'s two main authors.

## Legality

{% include Doomwiki.md p1="Strife" %}
Reverse engineering is a protected activity so long as the original code is not used directly in the product. Due to the vast amount of information lost through the process of compilation, and the need to refactor large portions of code in order to eliminate non-portable idioms or to adapt them properly to Chocolate Doom\'s framework, the resulting code behaves the same, but is not the \*same\* code.

Strife developer James Monroe and John Carmack have both stated that they have no objections to the project. Because they are the original authors of the code, and neither Rogue nor their publisher, Velocity, Inc., exist any longer as legal entities, this is effectively legal permission.

## See Also {#see_also}

- [strife-branch](/Strife-branch.md)
- [Strife: Veteran Edition](/Strife:_Veteran_Edition.md)
