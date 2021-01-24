# -*- encoding: utf-8 -*-
# stub: ddtrace 0.44.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ddtrace".freeze
  s.version = "0.44.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 2.0.0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Datadog, Inc.".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-01-06"
  s.description = "ddtrace is Datadog\u2019s tracing client for Ruby. It is used to trace requests\nas they flow across web servers, databases and microservices so that developers\nhave great visiblity into bottlenecks and troublesome requests.\n".freeze
  s.email = ["dev@datadoghq.com".freeze]
  s.homepage = "https://github.com/DataDog/dd-trace-rb".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Datadog tracing code for your Ruby applications".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<msgpack>.freeze, [">= 0"])
    s.add_development_dependency(%q<dogstatsd-ruby>.freeze, [">= 3.3.0"])
    s.add_development_dependency(%q<opentracing>.freeze, [">= 0.4.1"])
    s.add_development_dependency(%q<concurrent-ruby>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 10.5"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.49.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<ruby-prof>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<minitest>.freeze, ["= 5.10.1"])
    s.add_development_dependency(%q<minitest-around>.freeze, ["= 0.5.0"])
    s.add_development_dependency(%q<minitest-stub_any_instance>.freeze, ["= 1.0.2"])
    s.add_development_dependency(%q<pimpmychangelog>.freeze, [">= 0.1.2"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.2"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 3.10.0"])
    s.add_development_dependency(%q<builder>.freeze, [">= 0"])
    s.add_development_dependency(%q<climate_control>.freeze, ["~> 0.2.0"])
    s.add_development_dependency(%q<addressable>.freeze, ["~> 2.4.0"])
    s.add_development_dependency(%q<benchmark-ips>.freeze, ["~> 2.8"])
    s.add_development_dependency(%q<benchmark-memory>.freeze, ["~> 0.1"])
    s.add_development_dependency(%q<memory_profiler>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<redcarpet>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.12.2"])
    s.add_development_dependency(%q<pry-nav>.freeze, ["~> 0.3.0"])
    s.add_development_dependency(%q<pry-stack_explorer>.freeze, ["~> 0.4.9"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17"])
    s.add_development_dependency(%q<warning>.freeze, ["~> 1"])
  else
    s.add_dependency(%q<msgpack>.freeze, [">= 0"])
    s.add_dependency(%q<dogstatsd-ruby>.freeze, [">= 3.3.0"])
    s.add_dependency(%q<opentracing>.freeze, [">= 0.4.1"])
    s.add_dependency(%q<concurrent-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 10.5"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.49.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.1"])
    s.add_dependency(%q<ruby-prof>.freeze, ["~> 1.4"])
    s.add_dependency(%q<minitest>.freeze, ["= 5.10.1"])
    s.add_dependency(%q<minitest-around>.freeze, ["= 0.5.0"])
    s.add_dependency(%q<minitest-stub_any_instance>.freeze, ["= 1.0.2"])
    s.add_dependency(%q<pimpmychangelog>.freeze, [">= 0.1.2"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.2"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<webmock>.freeze, [">= 3.10.0"])
    s.add_dependency(%q<builder>.freeze, [">= 0"])
    s.add_dependency(%q<climate_control>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4.0"])
    s.add_dependency(%q<benchmark-ips>.freeze, ["~> 2.8"])
    s.add_dependency(%q<benchmark-memory>.freeze, ["~> 0.1"])
    s.add_dependency(%q<memory_profiler>.freeze, ["~> 0.9"])
    s.add_dependency(%q<redcarpet>.freeze, ["~> 3.4"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.12.2"])
    s.add_dependency(%q<pry-nav>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<pry-stack_explorer>.freeze, ["~> 0.4.9"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17"])
    s.add_dependency(%q<warning>.freeze, ["~> 1"])
  end
end
