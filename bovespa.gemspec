# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.add_dependency("nokogiri", "1.4.4")
  s.authors = ["Marco Antonio Fogaça Nogueira"]
  s.description = %q{A Ruby wrapper for the Bovespa stock quotes API}
  s.email = ["marcofognog@gmail.com"]
  s.date = File.utime('VERSION')

  s.files = `git ls-files`.split("\n")
  s.homepage = "http://rubygems.org/gems/twitter"
  s.name = "bovespa"
  s.platform = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.7")
  s.summary = %q{Ruby wrapper for the Bovespa API}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = '0.5.0'
end 
