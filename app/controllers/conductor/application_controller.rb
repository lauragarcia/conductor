module Conductor
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :ensure_local_request
    before_action :set_page_title

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
