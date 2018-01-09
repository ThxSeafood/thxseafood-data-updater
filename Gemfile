source 'https://rubygems.org'

# Networking gems
gem 'http'

# Asynchronicity gems
gem 'concurrent-ruby'

# Web app related
gem 'econfig'
gem 'pry' # to run console in production
gem 'puma'
gem 'rack-test' # to diagnose routes in production
gem 'rake' # to run migrations in production
gem 'roda'

# Database related
gem 'hirb'
gem 'sequel'

# Data gems
gem 'dry-struct'
gem 'dry-types'


group :development, :test do
  gem 'sqlite3'

  gem 'database_cleaner'

  gem 'rerun'
end

group :production do
  gem 'pg'
  # FB chatbot gems
  # gem 'sinatra'
  # gem 'facebook-messenger'
  # gem 'httparty'
end

