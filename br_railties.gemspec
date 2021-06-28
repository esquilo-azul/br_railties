# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'br_railties/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'br_railties'
  s.version     = ::BrRailties::VERSION
  s.authors     = ['Esquilo Azul Company']
  s.homepage    = 'https://github.com/esquilo-azul/br_railties'
  s.summary     = 'Brazilian resources for Rails.'
  s.license     = 'MIT'
  s.metadata    = { 'source_code_uri' => 'https://github.com/esquilo-azul/br_railties' }

  s.files = Dir['{app,config,db,lib}/**/*', 'Gemfile', 'README.rdoc']

  s.add_dependency 'active_scaffold'
  s.add_dependency 'railties', '>= 4.2.11.3'
  s.add_dependency 'recordselect', '~> 3.10'

  s.add_development_dependency 'eac_ruby_gem_support', '~> 0.2'
end
