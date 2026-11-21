<!-- This is used at the top of image pages to include the image itself. -->

{% assign imagefn = page.name | replace_last: ".md", "" | replace_first: "File:", "" %}
<a href="/images/{{ imagefn }}">
  <img src="/images/{{ imagefn }}" style="max-width: 100%;">
</a>
