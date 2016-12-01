# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'st2csv/version'

Gem::Specification.new do |spec|
  spec.name          = "st2csv"
  spec.version       = St2csv::VERSION
  spec.authors       = ["Arvinder Singh"]
  spec.email         = ["arvinder@communitylogiq.com"]

  spec.summary       = %q{Surrey Traffic Loop Data into csv.}
  spec.description   = %q{Converts the json data from surrey traffic loops API into CSV.}
  spec.homepage      = "https://github.com/comunitylogiq/st2csv"
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
end
