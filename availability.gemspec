$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "availability/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "availability"
  s.version     = Availability::VERSION
  s.authors     = ["zuozuo"]
  s.email       = ["c_yzuo@groupon.com"]
	s.homepage    = "https://github.com/zuozuo"
	s.summary     = "Server Availability check"
  s.description = "This gem provided availability chech for your server"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
