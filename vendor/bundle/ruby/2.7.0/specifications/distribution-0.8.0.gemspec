# -*- encoding: utf-8 -*-
# stub: distribution 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "distribution".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Claudio Bustos".freeze, "Carlos Agarie".freeze]
  s.date = "2020-07-05"
  s.description = "Distribution is a gem with several probabilistic distributions. Pure Ruby is used by default, C (GSL) or Java extensions are used if available".freeze
  s.email = ["clbustos@gmail.com".freeze, "carlos.agarie@gmail.com".freeze]
  s.executables = ["distribution".freeze]
  s.files = ["bin/distribution".freeze]
  s.homepage = "https://github.com/sciruby/distribution".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Distribution".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
  end
end
