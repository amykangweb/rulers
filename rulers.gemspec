# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["amykangweb"]
  spec.email         = ["selene6023@gmail.com"]

  spec.summary       = "Rebuilding-Rails Tutorial"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rack", "~> 1.6"
  spec.add_runtime_dependency "erubis", "~> 2.7"
  spec.add_runtime_dependency "multi_json"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "test-unit"
end
