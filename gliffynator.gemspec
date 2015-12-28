lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gliffynator/version'

Gem::Specification.new do |spec|
  spec.name = ''
  spec.version = Gliffynator::VERSION
  spec.authors = ['Tim Zwolak']
  spec.email = ['timothypage@gmail.com']
  spec.summary = "Generate Gliffy diagrams in .gliffy format in Ruby"
  spec.description = <<-eos
    Simple DSL for generating Gliffy diagrams in ruby and exporting in .gliffy format.
    Includes some basic shapes from the UML library
  eos

  spec.homepage = 'https://github.com/timothypage/gliffynator'
  spec.license = 'MIT'
  spec.files = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
