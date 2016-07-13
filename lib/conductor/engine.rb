module Conductor
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace Conductor

    initializer "conductor.assets.precompile" do |app|
      app.config.assets.precompile += %w( conductor/* )
    end
  end
end
