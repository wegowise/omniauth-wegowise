# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-wegowise/version"

Gem::Specification.new do |gem|
  gem.platform = Gem::Platform::RUBY
  gem.name = "omniauth-wegowise"
  gem.version = OmniAuth::WegoWise::VERSION
  gem.authors = ["Justin Dewyea"]
  gem.email = "jed@commuterdesign.com"
  gem.homepage = "https://github.com/wegowise/omniauth-wegowise"
  gem.summary = "OmniAuth strategy for WegoWise"
  gem.license = "MIT"
  gem.files = `git ls-files`.split("\n")

  gem.add_runtime_dependency 'multi_json', '~> 1.3'
  gem.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.14'
end
