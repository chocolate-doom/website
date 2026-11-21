<!-- This template renders figures that appear to the right side of pages,
     and emulates the MediaWiki [[Image:...|thumb|right]] syntax. -->
<div class="thumb tright" markdown="1"
     style="max-width: {{ include.width | default: 300 }}px;">
  <a href="/File:{{ include.image }}.html">
    <img src="/images/{{ include.image }}" class="image"
         style="max-width: 100%;">
  </a>
  <div class="thumbcaption" markdown="1">
    {{ include.caption }}
  </div>
</div>
