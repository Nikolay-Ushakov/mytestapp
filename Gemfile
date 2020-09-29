source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'twitter-bootstrap-rails'
gem 'simple_form'
gem 'client_side_validations'
gem 'client_side_validations-simple_form'

group :assets do
  gem 'sass-rails', '>= 6'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails'
  gem 'therubyracer', platform: :ruby
end

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 4.1'

gem 'webpacker', '~> 4.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]