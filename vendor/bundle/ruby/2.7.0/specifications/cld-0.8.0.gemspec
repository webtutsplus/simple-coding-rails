# -*- encoding: utf-8 -*-
# stub: cld 0.8.0 ruby lib
# stub: ext/cld/extconf.rb

Gem::Specification.new do |s|
  s.name = "cld".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Toy".freeze]
  s.date = "2018-12-10"
  s.description = "Compact Language Detection for Ruby".freeze
  s.email = ["jtoy@jtoy.net".freeze]
  s.extensions = ["ext/cld/extconf.rb".freeze]
  s.files = ["ext/cld/extconf.rb".freeze]
  s.homepage = "https://github.com/jtoy/cld".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Compact Language Detection for Ruby".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
  else
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
  end
end
