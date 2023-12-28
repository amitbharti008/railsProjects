require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdminPanel
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.after_initialize do
      Rails.application.routes.default_url_options[:host] = ENV['PRODUCTION_HOST'] || 'localhost:3000'
    end

    # Check if Dotenv is defined before trying to load it
    if defined?(Dotenv::Railtie)
      Bundler.require(*Rails.groups)
      Dotenv::Railtie.load
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
