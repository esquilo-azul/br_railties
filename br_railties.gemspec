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
  s.required_ruby_version = '>= 2.4'

  s.add_dependency 'cpf_cnpj'
  s.add_dependency 'eac_rails_utils', '~> 0.24'
  s.add_dependency 'railties', '~> 6.1.7', '>= 6.1.7.8'

  s.add_development_dependency 'eac_rails_gem_support', '~> 0.10', '>= 0.10.1'
end
