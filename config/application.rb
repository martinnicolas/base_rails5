require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BaseRails5
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #Configurar default locales y timezone
    config.i18n.default_locale = :es
    config.time_zone = 'America/Argentina/Buenos_Aires'
 	config.active_record.default_timezone = :local # Or :utc
  end
end
