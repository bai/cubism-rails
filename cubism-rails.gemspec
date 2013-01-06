# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cubism-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "cubism-rails"
  gem.version       = Cubism::Rails::VERSION
  gem.authors       = ["Vlad Gorodetsky"]
  gem.email         = ["v@gor.io"]
  gem.description   = %q{Cubism.js: A JavaScript library for time series visualization.}
  gem.summary       = %q{Gemified cubism.js asset for Rails}
  gem.homepage      = "http://github.com/bai/cubism-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 3.0", "< 5.0"
end
