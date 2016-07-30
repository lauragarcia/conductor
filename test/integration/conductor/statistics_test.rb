require 'test_helper'

module Conductor
  class StatisticsTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "Can see Statistics view" do
      get statistics_url
      assert_select "h1", "Conductor: Statistics"
    end

    test "Can see Statistics Tables" do
      get statistics_url
      assert_select "table", 2
    end
  end
end