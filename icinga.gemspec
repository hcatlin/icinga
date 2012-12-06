# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icinga/version'

Gem::Specification.new do |gem|
  gem.name          = "icinga"
  gem.version       = Icinga::VERSION
  gem.authors       = ["Joshua Bussdieker"]
  gem.email         = ["jbussdieker@gmail.com"]
  gem.homepage      = "http://github.com/jbussdieker/icinga"
  gem.description   = %q{Facilitates communication with Icinga servers.}
  gem.summary       = %q{Icinga API tools}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.add_runtime_dependency 'json'
end
