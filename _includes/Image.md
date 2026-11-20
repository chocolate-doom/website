<!-- This template renders figures that appear to the right side of pages,
     and emulates the MediaWiki [[Image:...|thumb|right]] syntax. -->
<div class="thumb tright" markdown="1"
     style="max-width: {{ include.width | default: 300 }}px;">
  <img src="/images/{{ include.image }}" class="image"
       style="max-width: 100%;">
  <div class="thumbcaption" markdown="1">
    {{ include.caption }}
  </div>
</div>
