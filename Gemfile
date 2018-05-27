source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Rails
gem 'rails', '~> 5.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem "font-awesome-rails"

# Fae CMS
gem 'fae-rails'

# HAML
gem 'haml-rails'

# Bootstrap
gem 'bootstrap', '~> 4.0.0'

# Route translator
gem 'route_translator'

# Keep environment secret variables secret
gem "figaro", '~> 1.1.1'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', '>= 3.9.0'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'

  gem 'better_errors', '>= 2.3.0'
  gem 'binding_of_caller'
  gem 'sqlite3'
  # The Bullet gem is designed to help you increase your application's performance by reducing the number of queries it makes.
  gem 'bullet'
end

group :production, :integration do
  # gem 'mysql2', '0.4.8'
  gem 'pg', '~> 0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
