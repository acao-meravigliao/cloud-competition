require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
# require "action_mailer/railtie"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require 'ygg/i18n/backend'
I18n.backend = Ygg::I18n::Backend.new

module CloudComp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.assets.paths << File.join(Rails.root, 'app', 'assets', 'js')
    config.assets.paths << File.join(Rails.root, 'app', 'assets', 'css')

    config.rails_amqp.url = 'amqp://agent@lino.acao.it'
    config.rails_amqp.debug = 0

    config.amqp_ws_gw.routes = {
    }

    config.amqp_ws_gw.allowed_request_origins = [
#      'http://dev.yggdra.it:3000',
#      'http://dev.yggdra.it:3001',
#      'http://62.212.12.194:3001',
    ]

    config.extgui.page_title = 'Cc Admin'
    config.extgui.application = 'CcAdmin.Application'
    config.extgui.routes.merge!({ 'CcAdmin' => 'CcAdmin' })
    config.extgui.default_theme = :neptune
    config.extgui.main_css = 'cc_admin.css'
    config.extgui.favicon = 'cc_admin/favicon.png'

  end
end

