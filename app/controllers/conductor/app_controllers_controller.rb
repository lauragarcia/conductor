require 'rails/generators'

module Conductor
  class AppControllersController < ApplicationController
    def new
      @page_title = 'Controllers'
    end

    def create
      generate(ControllerGeneratorForm, "controller", controller_params, new_app_controller_url)
    end
    
    private
    def controller_params
      params.require(:app_controller).permit(:name, :skip_namespace, :skip_assets, :skip_helper, fields: [:name])
    end
  end
end
