# -*- encoding: utf-8 -*-
# stub: field_test 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "field_test".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Kane".freeze]
  s.date = "2020-09-08"
  s.email = "andrew@chartkick.com".freeze
  s.homepage = "https://github.com/ankane/field_test".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A/B testing for Rails".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 5"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5"])
    s.add_runtime_dependency(%q<distribution>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<browser>.freeze, [">= 2.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<combustion>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 5"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5"])
    s.add_dependency(%q<distribution>.freeze, [">= 0"])
    s.add_dependency(%q<browser>.freeze, [">= 2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<combustion>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
