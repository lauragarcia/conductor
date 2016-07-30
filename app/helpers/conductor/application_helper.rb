module Conductor
  module ApplicationHelper
    def tolk_link
      link_to_if(defined?(Tolk), "Tolk", '/tolk') do
        link_to("Tolk", "http://www.github.com/tolk/tolk", target: "_blank", data: { confirm: "This extension is not installed." })
      end
    end

    def documentation_rails
      if File.exist?(File.join(Rails.root, 'doc', 'api', 'index.html'))
        link_to_doc('Rails API', 'api')
      else
        link_to("Rails API", "http://api.rubyonrails.org/", target: "_blank")
      end
    end

    def documentation_guides
      if File.exist?(File.join(Rails.root, 'doc', 'guides', 'index.html'))
        link_to_doc('Rails Guides', 'guides')
      else
        link_to("Rails Guides", "http://guides.rubyonrails.org/", target: "_blank")
      end
    end

    def documentation_app
      if File.exist?(File.join(Rails.root, 'doc', 'app', 'index.html'))
        link_to_doc('Your App', 'app')
      else
        link_to("Your App","#", data: { confirm: "rake doc:app generates documentation for your application in doc/app." })
      end
    end
  end
end
