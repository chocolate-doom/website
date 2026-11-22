<!-- Template to embed a Youtube video -->
{% if include.right %}
{%   assign tright = "tright" %}
{% endif %}
<div class="thumb {{ tright }}">
  <div class="thumbinner">
    <iframe width="{{ include.width | default: "640" }}"
            height="{{ include.height | default: "360" }}"
        src="https://www.youtube.com/embed/{{ include.id }}"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen>
    </iframe>

    {% if include.caption %}
      <div class="thumbcaption" markdown="1">{{ include.caption }}</div>
    {% endif %}
  </div>
</div>
