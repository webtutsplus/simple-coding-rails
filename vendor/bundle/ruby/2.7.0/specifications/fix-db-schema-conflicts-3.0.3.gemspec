# -*- encoding: utf-8 -*-
# stub: fix-db-schema-conflicts 3.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "fix-db-schema-conflicts".freeze
  s.version = "3.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jake Moffatt".freeze]
  s.date = "2019-03-08"
  s.description = "Ensures consistent output of db/schema.rb despite local differences in the database".freeze
  s.email = ["jakeonrails@gmail.com".freeze]
  s.homepage = "https://github.com/jakeonrails/fix-db-schema-conflicts".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Helps prevent unneeded db/schema.rb conflicts".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 11.2.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4.0"])
    s.add_development_dependency(%q<rails>.freeze, ["~> 4.2.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.0"])
    s.add_runtime_dependency(%q<rubocop>.freeze, [">= 0.38.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.2.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4.0"])
    s.add_dependency(%q<rails>.freeze, ["~> 4.2.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.38.0"])
  end
end
