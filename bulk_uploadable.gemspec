# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bulk_uploadable/version'

Gem::Specification.new do |spec|
  spec.name          = "bulk_uploadable"
  spec.version       = BulkUploadable::VERSION
  spec.authors       = ["Tauqeer"]
  spec.email         = ["tauqeer.ahmad2008@gmail.com"]
  spec.summary       = %q{Bulk Insert with ActiveRecord and PostgreSQL}
  spec.description   = %q{Bulk Insert with ActiveRecord and PostgreSQL}
  spec.homepage      = "https://github.com/tauqeerahamd/bulk_uploadable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
