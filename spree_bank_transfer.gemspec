# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name = 'spree_bank_transfer'
  s.version = '3.2.0'
  s.summary = 'This Spree extension allows admin to provide bank transfer payment method to its users.'
  s.description = s.summary

  s.require_paths = ["lib"]
  s.authors = 'Fajry Fachriansyah'
  s.email = 'fajri82@gmail.com'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
end
