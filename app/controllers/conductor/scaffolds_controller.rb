require 'rails/generators'
module Conductor
  class ScaffoldsController < ApplicationController
    def new
    end

    def create
      generate(ScaffoldGeneratorForm, "scaffold", scaffold_params, new_scaffold_url)
    end
    
    private
    def scaffold_params
      params.require(:scaffold).permit(:name, :skip_namespace, :skip_stylesheets, :skip_assets, :skip_indexes, :skip_fixture, :skip_helper, :skip_jbuilder, :skip_timestamps, :skip_migration, fields: [:name, :type])
    end
  end
end
