# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_active_shipping/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = 'spree_active_shipping'
  s.version     = SpreeActiveShipping.version
  s.authors     = 'Sean Schofield'
  s.email       = 'sean@spreecommerce.com'
  s.homepage    = 'http://github.com/ducl13/spree_active_shipping'
  s.summary     = 'Spree extension for providing shipping methods that wrap the active_shipping plugin.'
  s.description = 'Spree extension for providing shipping methods that wrap the active_shipping plugin.'
  s.required_ruby_version = '>= 2.3.3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  spree_version = '>= 3.2.0', '< 5.0'
  s.add_dependency 'spree_core', spree_version
  # See Gemfile for forked version
  s.add_dependency 'active_shipping'
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'pg', '~> 0.18'
  s.add_development_dependency 'mysql2', '~> 0.3.18'
  s.add_development_dependency 'appraisal'
end
