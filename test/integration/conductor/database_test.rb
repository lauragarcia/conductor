require 'test_helper'

module Conductor
  class DatabasesTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "Can see database view" do
      get database_url
      assert_select "h1", "Conductor: Databases"
    end

    test "Can see database.yml file" do
      get database_url
      assert_select "#editor"
    end
  end
end