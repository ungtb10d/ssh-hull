# frozen_string_literal: true

require_relative 'lib/ssh-hull/version'

Gem::Specification.new do |s|
  s.name        = 'ssh-hull'
  s.version     = 2.00
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Anders Pippi Tednes']
  s.email       = ['theblckswan@protonmail.com']
  s.homepage    = 'https://github.com/ungtb10d/ssh-hull'
  s.summary     = 'A Ruby/GTK3 gem to manage ssh hulls'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.7.0'

  s.files = %x(git ls-files).split("\n")

  s.bindir      = 'exe'
  s.executables = ['ssh-hull']

  s.add_runtime_dependency 'activemodel', '>= 5.2'
  s.add_runtime_dependency 'activesupport', '>= 5.2'
  s.add_runtime_dependency 'gtk3'
  s.add_runtime_dependency 'i18n'
  s.add_runtime_dependency 'ruby2_keywords'
  s.add_runtime_dependency 'subprocess'
  s.add_runtime_dependency 'zeitwerk'

  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rake'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'simplecov'
end
