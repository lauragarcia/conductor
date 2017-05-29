require 'rails/generators'

module Conductor
  class MailersController < ApplicationController
    def new
    end

    def create
      generate(MailerGeneratorForm, "mailer", mailer_params, new_mailer_url)
    end
    
    private
    def mailer_params
      params.require(:mailer).permit(:name, :skip_namespace, fields: [:name])
    end
  end
end
