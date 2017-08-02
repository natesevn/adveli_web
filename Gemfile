source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Default gems
gem 'rails', '~> 5.1.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0', '>= 5.0.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# For Bootstrap theme
gem 'therubyracer'
gem 'less-rails-bootstrap'
gem "font-awesome-rails"
gem 'jquery-rails'
gem 'jquery-easing-rails'

gem 'sprockets', '3.6.3'

gem 'rails-controller-testing'


group :development, :test do

  # Default gems
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

  # Active Record
  gem 'sqlite3', '1.3.13'
end

group :development do

  # Default gems
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Default gems
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
