module Jekyll

# GalleryboxTag implements a liquid block that shows a captioned illustration
# in "gallery" style, like MediaWiki's <gallery> tag produces.
#
# {% gallerybox filename="Pineapples.jpg" %}
# Example of a delicious pizza.
# {% endimage %}
#
class GalleryboxTag < Liquid::Block
  def initialize(tag_name, markup, tokens)
    super
    @attributes = {}
    markup.scan(Liquid::TagAttributes) do |key, value|
      @attributes[key] = value
    end
  end

  def render(context)
    attrs = @attributes.transform_values { |v| context[v] }
    caption = super.to_s.strip
    <<~END
      <div class="gallerybox">
        <div class="thumb">
          <a href="/File:#{attrs["filename"]}.html"><img src="/thumbs/#{attrs["filename"]}"></a>
        </div>
        <div class="gallerytext" markdown="1">#{caption}
        </div>
      </div>
    END
  end

  # Always render, even when there's no caption.
  def blank?
    false
  end
end

end

Liquid::Template.register_tag("gallerybox", Jekyll::GalleryboxTag)
