# -*- encoding: utf-8 -*-
# stub: vault 0.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "vault".freeze
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-08-05"
  s.description = "Vault is a Ruby API client for interacting with a Vault server.".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.homepage = "https://github.com/hashicorp/vault-ruby".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Vault is a Ruby API client for interacting with a Vault server.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<aws-sigv4>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.13.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.24"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.8.3"])
  else
    s.add_dependency(%q<aws-sigv4>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.13.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.24"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.8.3"])
  end
end
