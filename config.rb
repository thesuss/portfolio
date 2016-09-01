###
# Page options, layouts, aliases and proxies
###
require 'extensions/build_cleaner'
# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates

helpers do
  def is_page_active(page)
    current_page.url == page ? {class: 'active'} : {}
  end
end


# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css
  activate :relative_assets
  activate :build_cleaner
  set :site_url, "/portfolio"
  # Minify Javascript on build
  # activate :minify_javascript
end
