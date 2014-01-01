###
# Blog settings
###

Time.zone = "Tokyo"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  blog.summary_separator = /(<!-- READ_MORE -->)/
  blog.summary_length = 200
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".md"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Set http preifx
  set :http_prefix, "/middleman_trial/"
end

###
# Deploy settings
###

activate :deploy do |deploy|
  # Deploy a site via git
  deploy.method = :git
  # Optional Settings
  # deploy.remote = "custom-remote" # remote name or git url, default: origin
  # deploy.branch = "custom-branch" # default: gh-pages

  # Run `middleman build` before the deploy step
  # deploy.build_before = true
end

###
# Additional settings
###

# Set all URLs generated by link_to to be relative
# set :relative_links, true

# Use pretty URLs
activate :directory_indexes
# page "/tags/*", :directory_index => false

# Markdown
# https://github.com/vmg/redcarpet/blob/master/README.markdown
set :markdown_engine, :redcarpet
set :markdown, {
  # Code blocks
  fenced_code_blocks: true, # Parse fenced code blocks, PHP-Markdown style, same as GFM
  gh_blockcode: true, # Generate safer HTML for code blocks (no custom CSS classes)
  # disable_indented_code_blocks: false, # Do not parse usual markdown code blocks
  # Tables
  tables: true, # Parse tables, PHP-Markdown style, same as GFM
  # Others
  hard_wrap: true, # Treat newlines in paragraphs as real line breaks, same as GFM
  no_intra_emphasis: true, # Do not parse emphasis_inside_of_words, same as GFM
  strikethrough: true, # Parse ~~strikethrough~~, PHP-Markdown style, same as GFM
  autolink: true, # Parse links even when they are not enclosed in <> characters, same as GFM
  highlight: true, # Parse ==highlights==
  underline: true, # Parse _underscored emphasis_ as underlines
  # footnotes: false, # Parse footnotes, PHP-Markdown style
  # superscript: false, # Parse superscripts after the ^ character
  # quote: false, # Parse "quotes" to <q>quote</q>
  # space_after_headers: false, # A space is required between the hash and header, same as GFM?
  # lax_spacing: false, # HTML blocks do not require to be surrounded by an empty line, same as GFM?
  # smartypants: false, # Enable SmartyPants, see http://daringfireball.net/projects/smartypants/
  with_toc_data: true # Add HTML anchors to each header in the output HTML
}
