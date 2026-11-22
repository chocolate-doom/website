module Jekyll

# This generator processes the categories listed in front-matter of each page,
# and builds a map from category name to list of pages in that category. That
# list is then added to the front matter for the respective category pages.
class AddCategoryData < Generator
    safe true
    priority :normal

    def generate(site)
        category_to_pages = {}
        site.pages.each do |page|
            page_categories = (page.data["categories"] or [])
            page_categories.each do |category|
                category_pages = (category_to_pages[category] or [])
                category_to_pages[category] = category_pages
                page_title = page.path.sub(/\.md$/, "")
                page_title = page_title.gsub("__", "/")
                page_title = page_title.gsub("_", " ")
                category_pages.push(page_title)
            end
        end
        category_to_pages.each_value do |pages|
            pages.sort!
        end
        site.pages.each do |page|
            m = /^Category:(.*).md/.match(page.path)
            if m
                page.data["category_pages"] = (category_to_pages[m[1]] or [])
            end
        end
    end
end

Jekyll.logger.info "AddCategoryData:", "plugin loaded"

end

# vim: expandtab ts=4 sw=4
