lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "data_bus/version"

Gem::Specification.new do |spec|
  spec.name          = "data_bus"
  spec.version       = DataBus::VERSION
  spec.authors       = ["Jan Dudulski"]
  spec.email         = ["jan.dudulski@monterail.com"]

  spec.summary       = %q{Data Bus pattern implementation in Ruby}
  spec.description   = %q{Data Bus pattern implementation in Ruby}
  spec.homepage      = "https://github.com/monterail/data_bus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
