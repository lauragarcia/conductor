require 'minitest/mock'
module Conductor
  class ApplicationHelperTest < ActionView::TestCase
    # test "should return link to Tolk Gem" do
    #   # stub :defined?, true do
    #   #   link = %{<a href="/tolk">Tolk</a>}
    #   #   assert_dom_equal link, tolk_link
    #   # end
    #   #   # link = %{<a target="_blank" data-confirm="This extension is not installed." href="http://www.github.com/tolk/tolk">Tolk</a>}
    #   # assert_dom_equal link, tolk_link
    # end

    test "should return link to Rails Documentation files" do
      File.stub :exist?, true do
        link = %{<a href="/doc/api/index.html">Rails API</a>}
        assert_dom_equal link, documentation_rails
      end
    end

    test "should return link to Rails Documentation URL" do
      File.stub :exist?, false do
        link = %{<a target="_blank" href="http://api.rubyonrails.org/">Rails API</a>}
        assert_dom_equal link, documentation_rails
      end
    end

    test "should return link to Rails Guides URL" do
      File.stub :exist?, false do
        link = %{<a target="_blank" href="http://guides.rubyonrails.org/">Rails Guides</a>}
        assert_dom_equal link, documentation_guides
      end
    end

    test "shoudl return link to Rails Guides files" do
      File.stub :exist?, true do
        link = %{<a href="/doc/guides/index.html">Rails Guides</a>}
        assert_dom_equal link, documentation_guides
      end
    end

    test "should return a alert if the project has not documentation " do
      File.stub :exist?, false do
        link = %{<a data-confirm="rake doc:app generates documentation for your application in doc/app." href="#">Your App</a>}
        assert_dom_equal link, documentation_app
      end
    end

    test 'should return link to App documentation' do
      File.stub :exist?, true do
        link = %{<a href="/doc/app/index.html">Your App</a>}
        assert_dom_equal link, documentation_app
      end
    end

    test "should return link" do
      link = %{<a href="/doc/test/index.html">Test link</a>}
      assert_dom_equal link, link_to_doc('Test link', 'test')
    end

  end
end
