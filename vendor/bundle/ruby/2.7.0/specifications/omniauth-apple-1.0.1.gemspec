# -*- encoding: utf-8 -*-
# stub: omniauth-apple 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-apple".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["nhosoya".freeze, "Fabian J\u00E4ger".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-12-03"
  s.description = "OmniAuth strategy for Sign In with Apple".freeze
  s.email = ["hnhnnhnh@gmail.com".freeze, "fabian@mailbutler.io".freeze]
  s.homepage = "https://github.com/nhosoya/omniauth-apple".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "OmniAuth strategy for Sign In with Apple".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<jwt>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.8"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.18"])
  else
    s.add_dependency(%q<omniauth-oauth2>.freeze, [">= 0"])
    s.add_dependency(%q<jwt>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.8"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.18"])
  end
end
