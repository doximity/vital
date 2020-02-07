set :source, "."

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false
page "/sitemap.xml", layout: false

import_path "#{Vital.gem_path}/fonts"

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Syntax highlighting
activate :syntax
# Pretty URLs
activate :directory_indexes
# Set relative paths needed for github pages
activate :relative_assets
# SEO Optimizations
activate :meta_tags
# Sitemap generator
activate :search_engine_sitemap, default_priority: 1, default_change_frequency: "weekly"
# Bust caches
activate :asset_hash, ignore: ["images/opengraph.jpg", "images/logo.png"]

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  activate :robots, rules: [
    {user_agent: "*", allow: %w[/]},
  ],
                    sitemap: '#{data.site.url}/sitemap.xml'

  # Minify on build
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  activate :gzip

  set :relative_links, true
  set :site_url, "/vital"
  set :url_root, "http://vitalcss.com"
end
