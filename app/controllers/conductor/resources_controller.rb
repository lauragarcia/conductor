require 'rails/generators'
module Conductor
  class ResourcesController < ApplicationController
    def new
    end

    def create
      generate(ResourceGeneratorForm, "resource", resources_params, new_resource_url)
    end
    
    private
    def resources_params
      params.require(:resource).permit(:name, :skip_namespace, :skip_stylesheets, :skip_assets, :skip_indexes, :skip_fixture, :skip_helper, :skip_jbuilder, :skip_timestamps, :skip_migration, fields: [:name, :type])
    end

  end
end
