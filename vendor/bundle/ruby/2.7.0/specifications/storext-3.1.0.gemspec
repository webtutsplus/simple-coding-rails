# -*- encoding: utf-8 -*-
# stub: storext 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "storext".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["G5".freeze, "Ramon Tayag".freeze, "Marc Rendl Ignacio".freeze]
  s.date = "2019-09-05"
  s.description = "Extends ActiveRecord::Store.store_accessor".freeze
  s.email = ["lateam@getg5.com".freeze, "ramon.tayag@gmail.com".freeze, "marcrendlignacio@gmail.com".freeze]
  s.homepage = "http://github.com/g5/storext".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Extends ActiveRecord::Store.store_accessor".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<virtus>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0", "< 6.1"])
    s.add_development_dependency(%q<pg>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
  else
    s.add_dependency(%q<virtus>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0", "< 6.1"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
  end
end
