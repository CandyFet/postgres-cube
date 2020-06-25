# coding: utf-8

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postgresql-cube/version'

Gem::Specification.new do |spec|
  spec.name          = 'postgresql-cube'
  spec.version       = PostgreSQLCube::VERSION
  spec.authors       = ['Fedor Zasechkin ']
  spec.email         = ['inorect.a.z@gmail.com']

  spec.summary       = 'ActiveRecord support for the PostgreSQL cube data type.'
  spec.homepage      = 'https://github.com/CandyFet/postgres-cube'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 5.0'
  spec.add_dependency 'pg', '>= 0.18'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
