require 'slim'

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
# page '/path/to/file.html', layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy '/this-page-has-no-template.html', '/template-file.html', locals: {
#  which_fake_page: 'Rendering a fake page with a local variable' }

###
# Helpers
###

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     'Helping'
#   end
# end

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :syntax

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

activate :blog do |blog|
  # set options on blog
  blog.permalink = "{title}.html"
  blog.sources = "articles/{year}-{month}-{day}-{title}.html"
  blog.layout = "article_layout"
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

redirect "read/elixir-ecto-error-unknown-type-text/index.html", to: "/fix-for-ecto-argumenterror-invalid-or-unknown-type-text-for-field-text.html"
redirect "read/renew-certificate-lets-encrypt-certbot/index.html", to: "/renewing-let-s-encrypt-certificate-with-certbot.html"
redirect "read/postgres-directory-pre-existing-postmaster/index.html", to: "/postgresql-error-fix-this-data-directory-appears-to-be-running-a-pre-existing-postmaster.html"
redirect "read/fixing-loaderror-cannot-load-such-file-bcrypt/index.html", to: "/error-fix-loaderror-cannot-load-such-file-bcrypt.html"
redirect "read/ruby-readline-problems/index.html", to: "/dealing-with-ruby-s-readline-problems.html"
redirect "read/html-helper-elm/index.html", to: "/creating-an-html-helper-in-elm.html"

activate :alias

require "lib/custom_helpers"
helpers CustomHelpers
