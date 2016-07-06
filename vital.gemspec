# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vital/version'

Gem::Specification.new do |spec|
  spec.name          = 'vital'
  spec.version       = Vital::VERSION
  spec.authors       = ['Body Taing', 'Fabio Rehm']
  spec.email         = ['btaing@doximity.com', 'frehm@doximity.com']

  spec.summary       = 'A minimally invasive CSS framework for modern web applications.'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://doximity.github.io/vital/'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|docs|icons)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sass', '>= 3.4'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'fontcustom', '>= 1.3'
  spec.add_development_dependency 'rake', '~> 10.0'
end
