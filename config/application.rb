require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require 'rails/mongoid'

Bundler.require(*Rails.groups)

module TilApi
  class Application < Rails::Application

  end
end
