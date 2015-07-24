$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruby_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruby_api"
  s.version     = RubyApi::VERSION
  s.authors     = ["JoshS"]
  s.email       = ["wolfpack@vulk.co"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RubyApi."
  s.description = "TODO: This wil a custom implementation of a plugin that will generate a rails api suitable for a javascript client side application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
