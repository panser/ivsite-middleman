###
# Page options, layouts, aliases and proxies
###

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

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :livereload

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # activate :blog
  activate :blog do |blog|
    # Matcher for blog source files
    blog.sources = "posts/{year}-{month}-{day}-{title}.html"
    # blog.summary_separator = "<!--more-->"
    # blog.tag_template = "tag.html"
    # blog.calendar_template = "calendar.html"
  end

end

# activate :blog do |blog|
#   # set options on blog
# end

