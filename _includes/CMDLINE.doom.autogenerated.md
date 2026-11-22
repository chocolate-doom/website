### General options {#general_options}

-config \<file\>
: Load main configuration from the specified file, instead of the default.

-devparm
: Developer mode. F1 saves a screenshot in the current working directory.

-extraconfig \<file\>
: Load additional configuration from the specified file, instead of the default.

-file \<files\>
: Load the specified PWAD files.

-iwad \<file\>
: Specify an IWAD file to use.

-nomusic
: Disable music.

-nosfx
: Disable sound effects.

-nosound
: Disable all sound output.

-savedir \<directory\>
: Specify a path from which to load and save games. If the directory does not exist then it will automatically be created.

### Game start options {#game_start_options}

-episode \<n\>
: Start playing on episode n (1-4)

-fast
: Monsters move faster.

-loadgame \<s\>
: Load the game in slot s.

-nomonsters
: Disable monsters.

-respawn
: Monsters respawn after being killed.

-skill \<skill\>
: Set the game skill, 1-5 (1: easiest, 5: hardest). A skill of 0 disables all monsters.

-turbo \<x\>
: Turbo mode. The player\'s speed is multiplied by x%. If unspecified, x defaults to 200. Values are rounded up to 10 and down to 400.

-warp \[\<x\> \<y\> \| \<xy\>\]
: Start a game immediately, warping to ExMy (Doom 1) or MAPxy (Doom 2)

### Display options {#display_options}

-1
: Don\'t scale up the screen. Implies -window.

-2
: Double up the screen to 2x its normal size. Implies -window.

-3
: Double up the screen to 3x its normal size. Implies -window.

-fullscreen
: Run in fullscreen mode.

-geometry \<WxY\>
: Specify the dimensions of the window. Implies -window.

-height \<y\>
: Specify the screen height, in pixels. Implies -window.

-noblit
: Disable blitting the screen.

-nodraw
: Disable rendering the screen entirely.

-nograbmouse
: Don\'t grab the mouse when running in windowed mode.

-nomouse
: Disable the mouse.

-width \<x\>
: Specify the screen width, in pixels. Implies -window.

-window
: Run in a window.

### Networking options {#networking_options}

-altdeath
: Start a deathmatch 2.0 game. Weapons do not stay in place and all items respawn after 30 seconds.

-autojoin
: Automatically search the local LAN for a [multiplayer](/Multiplayer.md) server and join it.

-avg
: Austin Virtual Gaming: end levels after 20 minutes.

-connect \<address\>
: Connect to a [multiplayer](/Multiplayer.md) server running on the given address.

-deathmatch
: Start a deathmatch game.

-dedicated
: Start a dedicated server, routing packets but not participating in the game itself.

-dup \<n\>
: Reduce the resolution of the game by a factor of n, reducing the amount of network bandwidth needed.

-extratics \<n\>
: Send n extra tics in every packet as insurance against dropped packets.

-left
: Run as the left screen in [three screen mode](/Three_screen_mode.md).

-localsearch
: Search the local LAN for running servers.

-newsync
: Use new network client sync code rather than the classic sync code. This is currently disabled by default because it has some bugs.

-nodes \<n\>
: Autostart the netgame when n nodes (clients) have joined the server.

-port \<n\>
: Use the specified UDP port for communications, instead of the default (2342).

-privateserver
: When running a server, don\'t register with the global master server. Implies -server.

-query \<address\>
: Query the status of the server running on the given IP address.

-right
: Run as the right screen in [three screen mode](/Three_screen_mode.md).

-search
: Query the Internet master server for a global list of active servers.

-server
: Start a [multiplayer](/Multiplayer.md) server, listening for connections.

-servername \<name\>
: When starting a network server, specify a name for the server.

-solo-net
: Start the game playing as though in a netgame with a single player. This can also be used to play back single player netgame demos.

-timer \<n\>
: For [multiplayer](/Multiplayer.md) games: exit each level after n minutes.

### Dehacked and WAD merging {#dehacked_and_wad_merging}

-aa \<files\>
: Equivalent to \"-af \<files\> -as \<files\>\".

-af \<files\>
: Simulates the behavior of NWT\'s -af option, [merging](/Merging.md) flats into the main IWAD directory. Multiple files may be specified.

-as \<files\>
: Simulates the behavior of NWT\'s -as option, [merging](/Merging.md) sprites into the main IWAD directory. Multiple files may be specified.

-deh \<files\>
: Load the given [dehacked](/Dehacked.md) patch(es)

-dehlump
: Load [Dehacked](/Dehacked.md) patches from [DEHACKED](/Dehacked.md) lumps contained in one of the loaded PWAD files.

-merge \<files\>
: Simulates the behavior of deutex\'s -merge option, [merging](/Merging.md) a PWAD into the main IWAD. Multiple files may be specified.

-nocheats
: Ignore cheats in [dehacked](/Dehacked.md) files.

-nodeh
: Disable automatic loading of [Dehacked](/Dehacked.md) patches for certain IWAD files.

-nwtmerge \<files\>
: Simulates the behavior of NWT\'s -merge option. Multiple files may be specified.

### Demo options {#demo_options}

-longtics
: Record a high resolution \"[Doom 1.91](/Doom_1.91.md)\" demo.

-maxdemo \<size\>
: Specify the demo buffer size (KiB)

-playdemo \<demo\>
: Play back the demo named demo.lmp.

-record \<x\>
: Record a demo named x.lmp.

-strictdemos
: When recording or playing back demos, disable any extensions of the vanilla demo format - record demos as vanilla would do, and play back demos as vanilla would do.

-timedemo \<demo\>
: Play back the demo named demo.lmp, determining the framerate of the screen.

### Compatibility

-donut \<x\> \<y\>
: Use the specified magic values when emulating behavior caused by memory overruns from improperly constructed donuts. In Vanilla Doom this can differ depending on the operating system. The default (if this option is not specified) is to emulate the behavior when running under Windows 98.

-gameversion \<version\>
: Emulate a specific version of Doom. Valid values are \"1.666\", \"1.7\", \"1.8\", \"1.9\", \"ultimate\", \"final\", \"final2\", \"hacx\" and \"chex\".

-pack \<pack\>
: Explicitly specify a Doom II \"mission pack\" to run as, instead of detecting it based on the filename. Valid values are: \"doom2\", \"tnt\" and \"plutonia\".

-setmem \<version\>
: Specify DOS version to emulate for NULL pointer dereference emulation. Supported versions are: dos622, dos71, dosbox. The default is to emulate DOS 7.1 (Windows 98).

-spechit \<n\>
: Use the specified magic value when emulating spechit overruns.

-statdump \<filename\>
: Dump statistics information to the specified file on the levels that were played. The output from this option matches the output from statdump.exe (see ctrlapi.zip in the /idgames archive).

### Obscure and less-used options {#obscure_and_less_used_options}

-cdrom
: Save configuration data and savegames in c:\\doomdata, allowing play from CD. **(windows only)**

-dumpsubstconfig \<filename\>
: Read all MIDI files from loaded WAD files, dump an example substitution music config file to the specified filename and quit.

-mb \<mb\>
: Specify the heap size, in MiB (default 16).

-mmap
: Use the OS\'s virtual memory subsystem to map WAD files directly into memory.

-nogui
: If specified, don\'t show a GUI window for error messages when the game exits with an error.
