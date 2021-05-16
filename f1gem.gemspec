lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "f1gem/version"

Gem::Specification.new do |spec|
  spec.name          = "f1gem"
  spec.version       = F1gem::VERSION
  spec.authors       = ["linhnvl"]
  spec.email         = ["nguyenvanlinh12d3@gmail.com"]

  spec.summary       = "A gem to show finding results repository github on your terminal"
  spec.description   = "A gem to show finding results repository github on your terminal"
  spec.homepage      = "https://github.com/linhnvl/f1gem"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
