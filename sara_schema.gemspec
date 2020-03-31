# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sara-schema/version'

Gem::Specification.new do |gem|
  gem.name = 'sara-schema'
  gem.version = SaraSchema::VERSION
  gem.authors = ['Kyle Fagan']
  gem.email = ['kfagan@mitre.org']
  gem.homepage = 'https://github.com/SaraAlert/sara-schema'
  gem.summary = 'Ruby integration for the Sara JSON Schema'
  gem.license = 'Apache-2.0'
  gem.require_paths = ['lib']
  gem.files = Dir['README.md', 'LICENSE', '{lib,schemas}/**/*']
  gem.add_dependency 'json_schemer', '~> 0.2'
  gem.add_development_dependency 'activesupport'
  gem.add_development_dependency 'colorize'
  gem.add_development_dependency 'gem-release'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'pry-remote'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rubocop'
end
