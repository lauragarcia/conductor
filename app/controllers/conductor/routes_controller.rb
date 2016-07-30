require_dependency "conductor/application_controller"

module Conductor
  class RoutesController < ApplicationController
    prepend_view_path ActionDispatch::DebugExceptions::RESCUES_TEMPLATE_PATH

    def index
      @routes_inspector = ActionDispatch::Routing::RoutesInspector.new(_routes.routes)    
    end
  end
end

