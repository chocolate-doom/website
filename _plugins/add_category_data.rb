module Jekyll

class Category
    attr_accessor :pages, :images, :subcategories

    def initialize
        @pages = []
        @images = []
        @subcategories = []
    end

    def add_page(title)
        group = if title =~ /^File:(.*)/
            title = $1
            @images
        elsif title =~ /^Category:(.*)/
            title = $1
            @subcategories
        else
            @pages
        end

        group.push(title)
    end
end

# This generator processes the categories listed in front-matter of each page,
# and builds a map from category name to list of pages in that category. That
# list is then added to the front matter for the respective category pages.
class AddCategoryData < Generator
    safe true
    priority :normal

    def generate(site)
        categories = {"Uncategorized" => Category.new}
        site.pages.each do |page|
            if not page.path.end_with?(".md")
                next
            end
            page_cats = (page.data["categories"] or [])
            page_title = page.path.sub(/\.md$/, "")
            page_title = page_title.gsub("__", "/")
            page_title = page_title.gsub("_", " ")
            page_cats.each do |cat_name|
                cat = (categories[cat_name] or Category.new)
                categories[cat_name] = cat
                cat.add_page(page_title)
            end
            if page_cats.empty?
                categories["Uncategorized"].add_page(page_title)
            end
        end
        site.pages.each do |page|
            if page.path =~ /^Category:(.*).md/
                cat = (categories[$1] or Category.new)
                page.data["category_pages"] = cat.pages.sort
                page.data["category_subcategories"] = cat.subcategories.sort
                page.data["category_images"] = cat.images.sort
            end
        end
    end
end

Jekyll.logger.info "AddCategoryData:", "plugin loaded"

end

# vim: expandtab ts=4 sw=4
