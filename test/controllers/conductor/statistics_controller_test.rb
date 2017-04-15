require 'test_helper'

module Conductor
  class StatisticsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index with Controllers" do
      get statistics_url
      assert_match(/Controllers/, response.body)
    end

    test "should get index with Helpers" do
      get statistics_url
      assert_match(/Helpers/, response.body)
    end

    test "should get index with Models" do
      get statistics_url
      assert_match(/Models/, response.body)
    end

    test "should get index with Libraries" do
      get statistics_url
      assert_match(/Libraries/, response.body)
    end

    test "should get index with APIs" do
      get statistics_url
      assert_match(/API/, response.body)
    end

    test "should get index with Controllers\ tests" do
      get statistics_url
      assert_match(/Controllers\ tests/, response.body)
    end

    test "should get index with Integration\ tests" do
      get statistics_url
      assert_match(/Integration\ tests/, response.body)
    end

    test "should get index with Unit\ tests" do
      get statistics_url
      assert_match(/Unit\ tests/, response.body)
    end
  end
end
