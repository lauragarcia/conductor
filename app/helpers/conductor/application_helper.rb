module Conductor
  module ApplicationHelper
    def tolk_link
      link_to_if(defined?(Tolk), "Tolk", '/tolk') do
      link_to("Tolk", "http://www.github.com/tolk/tolk", target: "_blank", data: { confirm: "This extension is not installed." })
     end
    end
  end
end
