# -*- encoding: utf-8 -*-
# stub: caze 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "caze".freeze
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Philip Sampaio".freeze, "Fabiano Beselga".freeze]
  s.date = "2017-12-19"
  s.description = "With Caze it's easy to define use cases and entry points.".freeze
  s.email = ["philip@magnetis.com.br".freeze, "fabiano@magnetis.com.br".freeze]
  s.homepage = "https://github.com/magnetis/caze".freeze
  s.licenses = ["Apache License 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A DSL to define use cases".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 3"])
  end
end
