module Conductor
  class Engine < ::Rails::Engine
    isolate_namespace Conductor

    initializer "conductor.assets.precompile" do |app|
      app.config.assets.precompile += %w( conductor/* )
    end
  end
end
