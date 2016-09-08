require 'test_helper'

module Conductor
  class MigrationsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get migrations_url
      assert_response :success
    end
  end
end
