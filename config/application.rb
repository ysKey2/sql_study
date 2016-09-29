require File.expand_path('../boot', __FILE__)

require "rails/all"
Bundler.require(*Rails.groups)

module SqlStudy
  class Application < Rails::Application
    config.i18n.available_locales = [:ja, :en]
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    config.active_record.default_timezone = :local
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.template_engine :slim
      g.stylesheets     false
      g.javascripts     false
      g.assets          false
      g.helper          false
      g.test_framework :rspec,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        fixture: true
      g.fixture_replacement :factory_girl,
        dir: 'pec/factories'
    end
  end
end
