require 'test_helper'

module Conductor
  class StatisticsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get statistics_url
      assert_response :success
    end
  end
end
