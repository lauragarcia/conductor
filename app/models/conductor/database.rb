require 'singleton'

module Conductor
  class Database < Code
    include Singleton

    DATABASE_PATH = File.join(Rails.root, 'config', 'database.yml')

    def initialize
      @path = DATABASE_PATH
    end
  end
end
