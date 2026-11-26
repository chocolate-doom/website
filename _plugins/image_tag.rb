module Jekyll

# ImageTag implements a liquid block that shows a captioned illustration on
# the right-hand side of the page. Examples:
#
# {% image filename:"Foobar.png" %}
# {% endimage %}
#   - minimal example, no caption
#
# {% image filename:"Pineapples.jpg" width:"400" %}
# Example of a delicious pizza.
# {% endimage %}
#   - example with caption and size override
#
class ImageTag < Liquid::Block
  def initialize(tag_name, markup, tokens)
    super
    @attributes = {"width" => "300"}
    markup.scan(Liquid::TagAttributes) do |key, value|
      @attributes[key] = value
    end
  end

  def render(context)
    attrs = @attributes.transform_values { |v| context[v] }
    caption = super.to_s.strip
    if not caption.empty?
      caption = "<div class=\"thumbcaption\" markdown=\"1\">#{caption}\n</div>"
    end
    <<~END
      <div class="thumb tright" markdown="1"
           style="max-width: #{attrs["width"]}px;">
        <div class="thumbinner">
          <a href="/File:#{attrs["filename"]}.html">
            <img src="/thumbs/#{attrs["filename"]}" class="thumbimage"
                 style="max-width: 100%;">
          </a>
          #{caption}
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

Liquid::Template.register_tag("image", Jekyll::ImageTag)
