# -*- encoding: utf-8 -*-
# stub: carrierwave-bombshelter 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-bombshelter".freeze
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["DarthSim".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-05-18"
  s.email = ["darthsim@gmail.com".freeze]
  s.homepage = "https://github.com/DarthSim/carrierwave-bombshelter".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Protect your carrierwave from image bombs".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_development_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_development_dependency(%q<fog>.freeze, [">= 0"])
    s.add_development_dependency(%q<fog-aws>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<mime-types>.freeze, ["< 3.0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.2.0"])
    s.add_runtime_dependency(%q<fastimage>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_dependency(%q<fog>.freeze, [">= 0"])
    s.add_dependency(%q<fog-aws>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<mime-types>.freeze, ["< 3.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 3.2.0"])
    s.add_dependency(%q<fastimage>.freeze, [">= 0"])
    s.add_dependency(%q<carrierwave>.freeze, [">= 0"])
  end
end
