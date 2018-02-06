source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# making your Gemfile safe for Heroku
# !!!!! Make sure you set the version of ruby installed used by your application
# use $ ruby -v to get the installed ruby version
ruby '2.3.4'   # just in case - tell Heroku which Ruby version we need
group :development, :test do
# make sure sqlite3 gem ONLY occurs inside development & test groups
# !!!!! make sure that you delete the sqlite3 gem from the general gems outside the development and test groups
  gem 'sqlite3'
end 
group :production do
    # make sure the following gems are in your production group:
  #gem 'pg'              # use PostgreSQL in production (Heroku)
  # !!!!! If you experience any problems with the PostgreSQL version while trying to deploy to Heroku change the above line with
  gem 'pg', '~> 0.15'

  gem 'rails_12factor'  # Heroku-specific production settings
end
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#use Haml for templates 
gem 'haml'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# add to end of Gemfile
group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
end
# add to end of Gemfile
group :test do
 gem 'rspec-rails'
end
group :test do
 gem 'factory_bot_rails'
end
