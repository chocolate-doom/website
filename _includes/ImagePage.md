<!-- This is used at the top of image pages to include the image itself. -->

<img src="/images/{{ page.name | replace_last: ".md", "" | replace_first: "File:", "" }}"
     style="max-width: 100%;">
