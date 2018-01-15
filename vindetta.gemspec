lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vindetta/version"

Gem::Specification.new do |spec|
  spec.name          = "vindetta"
  spec.version       = Vindetta::VERSION
  spec.authors       = ["Kyle Decot"]
  spec.email         = ["kyle@joinroot.com"]

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

  spec.add_dependency "gli", "~> 2.16"
  spec.add_dependency "i18n", "~> 0.9.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "factory_bot", "~> 4.8.2"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "rake", "~> 12.3.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.49"
  spec.add_development_dependency "simplecov", "~> 0.15.1"
  spec.add_development_dependency "vcr", "~> 4.0.0"
  spec.add_development_dependency "webmock", "~> 3.1.1"
end
