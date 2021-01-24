# -*- encoding: utf-8 -*-
# stub: staccato 0.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "staccato".freeze
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tony Pitale".freeze]
  s.date = "2019-08-08"
  s.description = "Ruby Google Analytics Measurement".freeze
  s.email = ["tpitale@gmail.com".freeze]
  s.homepage = "https://github.com/tpitale/staccato".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Ruby Google Analytics Measurement".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 3.0.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<bourne>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<faraday>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<bourne>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
  end
end
