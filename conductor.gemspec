$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "conductor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name    = 'conductor'
  s.version = Conductor::VERSION
  s.author  = 'David Heinemeier Hansson'
  s.email   = 'david@loudthinking.com'
  s.summary = 'Web UI for Rails development'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0.rc1", "< 5.1"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  
end
