source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

# using sqlite3 in development for now because pgsql is a pain to configure
group :development do
  gem 'sqlite3'
end

# Use pgsql in production; it's what's used on Heroku
group :production do
  gem 'pg'
end

gem 'jquery-rails'
gem 'haml'
gem 'paperclip'
gem 'aws-sdk'
gem 'thin'
gem 'hominid'

