<includeonly><span class="plainlinks">{{#if:{{{2|{{{file|{{{id|}}}}}}}}}|[https://www.doomworld.com/idgames/?{{#if:{{{file|}}}|file|id}}={{{2|{{{file|{{{id}}}}}}}}} {{{1|{{{title|{{PAGENAME}}}}}}}}]{{#if:{{{linkonly|}}}||&nbsp;at [https://www.doomworld.com/idgames/ Doomworld/idgames]}}|Error: no file or id given, see [[Template:Idgames|the instructions]] to use this template.}}</span></includeonly><noinclude>
<u>Usage</u>

This is used for linking to a file (usually a [[PWAD]]) at the [[Doomworld]]/[[Idgames archive|idgames]] interface, as:

: '''<tt><nowiki>{{idgames|file=somepath|title=somename}}</nowiki></tt>'''
: '''<tt><nowiki>{{idgames|id=somenumber|title=somename}}</nowiki></tt>'''

where ''somepath'' is the file's path in the archive or ''somenumber'' is the file ID and ''somename'' is normally the file's title or description (although, like any hyperlink, it can say other things instead).

''Example:'' 
:<tt><nowiki>{{idgames|file=levels/doom/d-f/eternity.zip|Eternity}}</nowiki></tt> becomes {{idgames|file=levels/doom/d-f/eternity.zip|Eternity}}
:<tt><nowiki>{{idgames|id=1046|title=Eternity}}</nowiki></tt> becomes {{idgames|id=1046|title=Eternity}}

*The title can also be the first, unnamed parameter: <tt><nowiki>{{idgames|Eternity|id=1046}}</nowiki></tt> becomes {{idgames|Eternity|id=1046}}.
*The path or id can also be the second unnamed parameter: <tt><nowiki>{{idgames|Eternity|1046}}</nowiki></tt> becomes {{idgames|Eternity|1046}}.
*If no title is given, the template uses the page title.
*If no path or id is given, the template displays an error message: {{idgames}}
*If the "<span class="plainlinks">at [https://www.doomworld.com/idgames/ Doomworld/idgames]</span>" bit is not desired, the linkonly parameter can be used: <tt><nowiki>{{idgames|Eternity|1046|linkonly=1}}</nowiki></tt> becomes {{idgames|Eternity|1046|linkonly=1}}.

[[Category:External link templates]]</noinclude>