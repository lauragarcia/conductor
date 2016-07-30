require_dependency "conductor/application_controller"
STATS_DIRECTORIES = [
  %w(Controllers        app/controllers),
  %w(Helpers            app/helpers),
  %w(Models             app/models),
  %w(Libraries          lib/),
  %w(APIs               app/apis),
  %w(Integration\ tests test/integration),
  %w(Controllers\ tests  test/controllers),
  %w(Unit\ tests        test/models)
].collect { |name, dir| [ name, "#{Rails.root}/#{dir}" ] }.select { |name, dir| File.directory?(dir) }


module Conductor
  class StatisticsController < ApplicationController
    def index
      @stats = Conductor::CodeStatistics.new(*STATS_DIRECTORIES)
    end
  end
end
