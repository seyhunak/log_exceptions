$:.push File.expand_path("../lib", __FILE__)
require "log_exceptions/version"

Gem::Specification.new do |s|
  s.name        = "log_exceptions"
  s.version     = LogExceptions::VERSION
  s.authors     = ["Seyhun Akyurek"]
  s.email       = ["seyhunak@gmail.com"]
  s.homepage    = "https://github.com/seyhunak/log_exceptions"
  s.summary     = "LogExceptions is the mountable exception engine"
  s.description = "LogExceptions is the mountable exception engine, it mount your existing application to log your exceptins."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
