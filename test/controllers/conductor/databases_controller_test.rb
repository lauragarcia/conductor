require 'test_helper'

module Conductor
  class DatabasesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get database_url
      assert_response :success
    end
  end
end
