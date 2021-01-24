# -*- encoding: utf-8 -*-
# stub: rails-settings-cached 2.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-settings-cached".freeze
  s.version = "2.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Lee".freeze]
  s.date = "2020-12-21"
  s.description = "\n  The best solution for store global settings in Rails applications.\n\n  This gem will managing a table of \u0430 global key, value pairs easy. Think of it like a \n  global Hash stored in your database, that uses simple ActiveRecord like methods for manipulation.\n\n  Keep track of any global setting that you dont want to hard code into your rails app.\n  You can store any kind of object.  Strings, numbers, arrays, or any object.\n  ".freeze
  s.email = "huacnlee@gmail.com".freeze
  s.homepage = "https://github.com/huacnlee/rails-settings-cached".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "The best solution for store global settings in Rails applications.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 5.0.0"])
    s.add_development_dependency(%q<codecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<pg>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.0.0"])
    s.add_dependency(%q<codecov>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
