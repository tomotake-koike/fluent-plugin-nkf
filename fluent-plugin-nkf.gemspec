# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/fliter_nkf_version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-nkf"
  spec.version       = Fluent::Plugin::Nkf::VERSION
  spec.authors       = ["Koike, Tomotake"]
  spec.email         = ["tomotake.koike@gmail.com"]
  spec.description   = %q{fluent filter plugin for nkf}
  spec.summary       = %q{fluent filter plugin for nkf}
  spec.homepage      = ""
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
