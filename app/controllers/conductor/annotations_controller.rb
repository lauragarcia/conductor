require_dependency "conductor/application_controller"

module Conductor
  class AnnotationsController < ApplicationController
    def index
      @todo = SourceAnnotationExtractor.new("TODO").find([File.join(Rails.root, 'app')])
      @optimize = SourceAnnotationExtractor.new("OPTIMIZE").find([File.join(Rails.root, 'app')])
      @fixme = SourceAnnotationExtractor.new("FIXME").find([File.join(Rails.root, 'app')])
    end
  end
end
