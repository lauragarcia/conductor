require 'test_helper'

module Conductor
  class RoutesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get routes_url
      assert_response :success
    end

  end
end
