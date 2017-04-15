require 'test_helper'

module Conductor
  class CodeTest < ActiveSupport::TestCase
    setup do
      @path = "#{ActiveSupport::TestCase.fixture_path}"
      File.open(File.join('/',"#{@path}/hello_world.rb"), 'w') { |file| file.write('Hi') }
    end

    test 'Content method should return the content for a valid file' do
      file = Code.new("#{@path}/hello_world.rb")
      assert_equal  "Hi", file.content
    end

    test 'Content method should return File not found for an invalid file' do
      file = Code.new("#{@path}/invalid_path.rb")
      assert_equal  'File not found.', file.content
    end

    test 'the content should be replaceable' do
      file = Code.new("#{@path}/hello_world.rb")
      file.content = 'bye'
      assert_equal 'bye', file.content
    end

    test 'the content should not be replaced if the assigned value is empty' do
      file = Code.new("#{@path}/hello_world.rb")
      file.content = ''
      assert_equal "Hi", file.content
    end

    test 'It should save the field' do
      file = Code.new("#{@path}/hello_world.rb")
      file.content = 'Save new info'
      assert(file.save)
    end

    test 'It should return a array with the files path inside a valid path' do
      file_path = ["#{@path}/controllers/concerns/.keep"]
      assert_equal(Code.find_by_path("#{@path}/controllers/concerns"), file_path)
    end

    test 'It should return an empty array with a invalid path' do
      assert_equal(Code.find_by_path("#{@path}/invalid"), [])
    end

    test 'It should return a array with the files and directories sorted' do
      file_path = ["#{@path}/controllers/concerns", "#{@path}/controllers/application_controller.rb", "#{@path}/controllers/posts_controller.rb"]
      assert_equal(Code.find_by_path("#{@path}/controllers"), file_path)
    end

  end
end
