require_relative 'boot'

require 'rails'

%w(
 action_controller/railtie
 action_view/railtie
 action_mailbox/engine
 action_text/engine
 sprockets/railtie
).each do |railtie|
 begin
   require railtie
 rescue LoadError
 end
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleRubyRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
