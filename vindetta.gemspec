# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "vindetta/version"

Gem::Specification.new do |spec|
  spec.name          = "vindetta"
  spec.version       = Vindetta::VERSION
  spec.authors       = ["Kyle Decot"]
  spec.email         = ["kyle@icloud.com"]

  spec.summary       = "Ruby gem for generating VINs"
  spec.description   = "Ruby gem for generating VINs"
  spec.homepage      = "https://github.com/kyledecot/vindetta"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gli", "~> 2.21.0"
  spec.add_dependency "i18n", "> 0.8", "<2"

  spec.add_development_dependency "bundler", "~> 2.3.22"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  spec.add_development_dependency "pry", "~> 0.14.1"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "rspec", "~> 3.11.0"
  spec.add_development_dependency "rubocop", "~> 1.36.0"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
end
