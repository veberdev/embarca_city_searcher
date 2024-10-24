# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
end

group :development do
  gem 'bullet' # detect query n + 1
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry'
  gem 'simplecov', require: false # code coverage analysis
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'factory_bot', '~> 5.2'
  gem 'faker'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  gem 'rubocop', '~> 1.65.0', require: false
  gem 'selenium-webdriver', '~> 4.0', '>= 4.0.3'
  gem 'shoulda-matchers'
  gem 'webdrivers', '~> 5.3', '>= 5.3.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
