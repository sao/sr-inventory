source 'https://rubygems.org'

# core
gem 'rails', '4.1.6'

# database
gem 'pg'

# assets
gem 'jquery-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass', '~> 3.0'
gem 'slim-rails'

# uac
gem 'devise'
gem 'cancancan'

# forms
gem 'simple_form'

group :development, :test do
  gem 'jazz_hands', github: 'jkrmr/jazz_hands', branch: 'byebug_and_updated_pry'
  gem 'figaro'
end

group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
  gem 'quiet_assets'
  gem 'letter_opener'
end

group :test do
  gem 'rspec-rails'
  gem 'spork', github: 'sao/spork'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'shoulda'
  gem 'shoulda-matchers', '< 2.6.0'
  gem 'factory_girl_rails', '4.4.1'
  gem 'database_cleaner'
end
