# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'currency_convert/version'

Gem::Specification.new do |spec|
  spec.name          = "currency_convert"
  spec.version       = CurrencyConvert::VERSION
  spec.authors       = ["Hatem Khattab"]
  spec.email         = ["hattemkhattab@gmail.com"]

  spec.summary       = "A gem to deal with money, convert to another currency and perform different comparisons."
  spec.description   = ""
  spec.homepage      = "https://github.com/HatemKhattab/currency_convert.git"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
