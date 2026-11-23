{% if include.page %}
{%     assign link_part = include.page | replace: " ", "_" %}
{%     assign link_title = include.page | replace: "_", " " %}
{% else %}
{%     assign link_part = page.name | remove_first: ".md" %}
{%     assign link_title = link_part | replace: "_", " " %}
{% endif %}
<div class="noprint" style="clear: right; border: solid #a3bfb1 1px; margin: 0 0 1em 1em; font-size: 90%; background: #cef2e0; width: 250px; padding: 4px; spacing: 0px; text-align: left; float: right;">
<div style="float: left;"><img src="/thumbs/Doomwiki.png" width="50"></div>
<div style="margin-left: 60px;">
For more information, visit the
<a href="https://doomwiki.org/wiki/{{ link_part }}">{{ link_title }}</a>
page on the <a href="https://doomwiki.org/">Doom Wiki</a>.
</div>
</div>
