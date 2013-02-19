# coding: utf-8
require "./lib/clean_logger/version"

Gem::Specification.new do |spec|
  spec.name          = "clean_logger"
  spec.version       = CleanLogger::VERSION
  spec.authors       = ["Nando Vieira"]
  spec.email         = ["fnando.vieira@gmail.com"]
  spec.description   = "Remove asset pipeline logging."
  spec.summary       = spec.description
  spec.homepage      = "http://github.com/fnando/clean-logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
