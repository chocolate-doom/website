(work in progress)

There are two main approaches to building chocolate edoom on MAC OS X:

* using apple's development stuff
* using fink



== via Apple's development tools ==

* get ahold of a compiler via xcode 2.2. Yes, that's a mandatory 800MB download just to get a compiler.
* install GCC from the disk image (I went for GCC 4)
* try and figure out where on earth the cc binary is hidden (/usr/bin would be too easy)

== via fink ==

Fink appears to be pretty unreliable. Also right now it seems it has SDL and SDL mixer but not SDL net which is mandatory for CD ?