source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg'

gem 'pry'
gem 'pry-rails'
gem 'awesome_print'

gem 'puma'
gem 'puma-plugin-systemd'

gem 'geocoder'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'



gem 'polymer-rails'




group :assets do
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'therubyracer'
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
#  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#  gem 'spring'
#  gem 'spring-watcher-listen', '~> 2.0.0'
end

source 'https://gems.sevio.it/' do
  gem 'vihai-password', '>= 1.2.0'
  gem 'active_rest', '~> 7.0.0'
end

gem 'json_exceptions', path: '../yggdra/plugins/json_exceptions'
gem 'vihai-password-rails', path: '../yggdra/plugins/vihai_password_rails'

gem 'hel', path: '../yggdra/plugins/hel'

gem 'rails_actor_model', path: '../yggdra/plugins/rails_actor_model'
gem 'rails_amqp', path: '../yggdra/plugins/rails_amqp'
gem 'amqp_ws_gw', path: '../yggdra/plugins/amqp_ws_gw'

gem 'core_models', path: '../yggdra/plugins/core_models'
gem 'core_hel', path: '../yggdra/plugins/core_hel'

gem 'i18n_models', path: '../yggdra/plugins/i18n_models'
gem 'i18n_hel', path: '../yggdra/plugins/i18n_hel'

gem 'ml_models', path: '../yggdra/plugins/ml_models'
gem 'ml_hel', path: '../yggdra/plugins/ml_hel'

# --- Frontend ----
gem 'autosvg', path: '../yggdra/plugins/autosvg'

gem 'extjs', path: '../yggdra/plugins/extjs'
gem 'extgui', path: '../yggdra/plugins/extgui'
gem 'fullgui', path: '../yggdra/plugins/fullgui'

gem 'core_extgui', path: '../yggdra/plugins/core_extgui'
gem 'i18n_extgui', path: '../yggdra/plugins/i18n_extgui'
gem 'ml_extgui', path: '../yggdra/plugins/ml_extgui'
