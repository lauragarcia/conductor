require 'test_helper'

module Conductor
  class AnnotationsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get annotations_url
      assert_response :success
    end
  end
end
