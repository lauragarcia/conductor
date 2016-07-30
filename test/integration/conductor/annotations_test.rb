require 'test_helper'

module Conductor
  class AnnotationsTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "Can see annotations view" do
      get annotations_url
      assert_select "h1", "Conductor: Annotations"
    end

    test "Can see annotations" do
      get annotations_url
      assert_select "h2", 4
    end
  end
end