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

    config.rails_amqp.debug = 1

    config.amqp_ws_gw.routes = {
    }

    config.amqp_ws_gw.allowed_request_origins = [
      'https://cc.acao.it',
      'http://linobis.acao.it:3000',
    ]

    config.extgui.page_title = 'Cc Admin'
    config.extgui.application = 'CcAdmin.Application'
    config.extgui.routes.merge!({ 'CcAdmin' => 'CcAdmin', 'Cc' => 'Cc' })
    config.extgui.default_theme = :neptune
    config.extgui.main_css = 'cc_admin.css'
    config.extgui.favicon = 'cc_admin/favicon.png'

    config.extgui.menu_tree = {
      cc: {
        _node_: {
          position: 20,
          text: 'CloudCompetition',
        },
        flightss: {
          _node_: {
            text: 'Flights',
            uri: 'model/ygg/cc/flights/',
  #          icon: image_path('pec/mailbox-16x16.png'),
          },
        },
        aircrafts: {
          _node_: {
            text: 'Aircrafts',
            uri: 'model/ygg/cc/aircrafts/',
          },
        },
        aircraft_types: {
          _node_: {
            text: 'Aircraft Types',
            uri: 'model/ygg/cc/aircraft_types/',
          },
        },
        pilots: {
          _node_: {
            text: 'Pilots',
            uri: 'model/ygg/cc/pilots/',
          },
        },
        clubss: {
          _node_: {
            text: 'Clubs',
            uri: 'model/ygg/cc/clubs/',
          },
        },
      },
    }
  end
end

