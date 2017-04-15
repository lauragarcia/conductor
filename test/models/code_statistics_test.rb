require 'test_helper'

module Conductor
  class CodeStatisticsTest < ActiveSupport::TestCase
    test "It should return line number for one folder" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal @stats.calculate_directory_statistics("#{ActiveSupport::TestCase.fixture_path}/controllers")["lines"], 63
    end
    test "It should return codelines number for one folder" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal @stats.calculate_directory_statistics("#{ActiveSupport::TestCase.fixture_path}/controllers")["codelines"], 42
    end

    test "It should return classes number for one folder" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal @stats.calculate_directory_statistics("#{ActiveSupport::TestCase.fixture_path}/controllers")["classes"], 2
    end
    test "It should return methods number for one folder" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal @stats.calculate_directory_statistics("#{ActiveSupport::TestCase.fixture_path}/controllers")["methods"], 9
    end
    test "It should return methods/classes" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal 4, @stats.line("controllers", {"methods" => 9, "classes" => 2})[:m_over_c]
    end
    test "It should return LOC/methods" do
      @stats = Conductor::CodeStatistics.new(nil)
      assert_equal 2, @stats.line("controllers", {"methods" => 9, "codelines" => 42})[:loc_over_m]
    end

  end
end
