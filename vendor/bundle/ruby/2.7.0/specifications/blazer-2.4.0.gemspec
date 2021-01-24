# -*- encoding: utf-8 -*-
# stub: blazer 2.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "blazer".freeze
  s.version = "2.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Kane".freeze]
  s.date = "2020-12-15"
  s.email = "andrew@chartkick.com".freeze
  s.homepage = "https://github.com/ankane/blazer".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Explore your data with SQL. Easily create charts and dashboards, and share them with your team.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 5"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5"])
    s.add_runtime_dependency(%q<chartkick>.freeze, [">= 3.2"])
    s.add_runtime_dependency(%q<safely_block>.freeze, [">= 0.1.1"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 5"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5"])
    s.add_dependency(%q<chartkick>.freeze, [">= 3.2"])
    s.add_dependency(%q<safely_block>.freeze, [">= 0.1.1"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
