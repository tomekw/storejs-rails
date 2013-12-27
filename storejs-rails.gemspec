# encoding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "storejs/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "storejs-rails"
  spec.version       = Storejs::Rails::VERSION
  spec.authors       = ["Tomek Wałkuski"]
  spec.email         = ["ja@jestem.tw"]
  spec.description   = "Package https://github.com/marcuswestin/store.js to use with Rails asset pipeline"
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/tomekw/storejs-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
