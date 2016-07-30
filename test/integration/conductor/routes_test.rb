require 'test_helper'

module Conductor
  class RoutesTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "Can see routes view" do
      get routes_url
      assert_select "h1", "Conductor: Routes"
    end

    test "Can see routes table" do
      get routes_url
      assert_select "table"
    end

  end
end