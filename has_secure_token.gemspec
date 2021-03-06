# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_secure_token/version'

Gem::Specification.new do |spec|
  spec.name          = "has_secure_token"
  spec.version       = HasSecureToken::VERSION
  spec.authors       = ["Roberto Miranda Altamar"]
  spec.email         = ["rjmaltamar@gmail.com"]
  spec.summary       = %q{Create uniques random tokens for any model in ruby on rails.}
  spec.description   = %q{Add to your models an easily way to generate tokens}
  spec.homepage      = "https://github.com/robertomiranda/has_secure_token"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.4.2"
end
