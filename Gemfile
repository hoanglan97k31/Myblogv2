source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#ruby and rails version
ruby '2.6.1'
gem 'rails', '~> 5.2.3'

#database
gem 'pg'

gem 'puma', '~> 3.11'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'

#frontend
gem 'sass-rails', '~> 5.0'
gem 'bootstrap'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'slim'
gem 'trix-rails', require: 'trix'

#backend
gem 'awesome_print'
gem 'simple_form'
gem 'devise'
gem 'carrierwave', '~> 1.0'
gem 'fog'
gem 'kaminari'
gem 'bootstrap-kaminari-views'

#debug
gem 'pry-byebug'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
