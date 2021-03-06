# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_active_merchant/version'

Gem::Specification.new do |spec|
  spec.name          = "test_active_merchant"
  spec.version       = TestActiveMerchant::VERSION
  spec.authors       = ["Tamara Temple"]
  spec.email         = ["tamouse@gmail.com"]

  spec.summary       = "Testing ActiveMerchant gem for possible use in Brewtoad app."
  spec.description   = "Testing ActiveMerchant gem for possible use in Brewtoad app."
  spec.homepage      = "https://github.com/tamouse/test_active_merchant"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # This is an experiment, it's not going to be a published gem.
    spec.metadata['allowed_push_host'] = nil
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activemerchant"
  spec.add_dependency "braintree"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "byebug"

end
