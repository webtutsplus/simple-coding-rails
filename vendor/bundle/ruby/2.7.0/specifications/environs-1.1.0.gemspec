# -*- encoding: utf-8 -*-
# stub: environs 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "environs".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Colin Rymer".freeze]
  s.date = "2014-02-12"
  s.description = "A simple wrapper around the ENV hash that by default raises an error when value requested is not set.".freeze
  s.email = ["colin.rymer@gmail.com".freeze]
  s.homepage = "https://github.com/primedia/environs".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A simple wrapper around the ENV hash that by default raises an error when value requested is not set.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
