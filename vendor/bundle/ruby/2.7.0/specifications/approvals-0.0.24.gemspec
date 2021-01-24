# -*- encoding: utf-8 -*-
# stub: approvals 0.0.24 ruby lib
# stub: ext/mkrf_conf.rb

Gem::Specification.new do |s|
  s.name = "approvals".freeze
  s.version = "0.0.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Katrina Owen".freeze]
  s.date = "2018-01-10"
  s.description = "A library to make it easier to do golden-master style testing in Ruby".freeze
  s.email = ["katrina.owen@gmail.com".freeze]
  s.executables = ["approvals".freeze]
  s.extensions = ["ext/mkrf_conf.rb".freeze]
  s.files = ["bin/approvals".freeze, "ext/mkrf_conf.rb".freeze]
  s.homepage = "https://github.com/kytrinyx/approvals".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Approval Tests for Ruby".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.18"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.18"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
  end
end
