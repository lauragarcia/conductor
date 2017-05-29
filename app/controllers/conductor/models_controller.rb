require 'rails/generators'

module Conductor
  class ModelsController < ApplicationController
    def new
    end

    def create
      generate(ModelGeneratorForm, "model", model_params, new_model_url)
    end

    private
    def model_params
      params.require(:model).permit(:name, :skip_namespace, :skip_stylesheets, :skip_assets, :skip_indexes, :skip_fixture, :skip_helper, :skip_jbuilder, :skip_timestamps, :skip_migration, fields: [:name, :type])
    end
  end
end
