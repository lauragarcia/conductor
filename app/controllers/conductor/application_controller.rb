module Conductor
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :ensure_local_request
    before_action :set_page_title

    protected
      def generate(form_class, name, params, redirect_path)
        @form = form_class.new(params)

        if @form.valid?
          Rails.logger.info @form.command_line
          @form.run
          flash[:success] = "The #{name} was created!"
        else
          flash[:error] = "Cannot create the #{name}! Please verify the information"
        end
        redirect_to(redirect_path)
      end

      private
      def ensure_local_request
        unless request.local?
          render :plain => "Only available from localhost", :status => :forbidden
        end
      end

      def set_page_title
        @page_title = self.class.controller_name.capitalize
      end
  end
end
