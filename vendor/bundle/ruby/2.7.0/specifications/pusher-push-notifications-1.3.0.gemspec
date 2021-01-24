# -*- encoding: utf-8 -*-
# stub: pusher-push-notifications 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pusher-push-notifications".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lucas Medeiros".freeze, "Pusher".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-07-02"
  s.email = ["lucastoc@gmail.com".freeze, "support@pusher.com".freeze]
  s.homepage = "https://github.com/pusher/push-notifications-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Pusher Push Notifications Ruby server SDK".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<caze>.freeze, ["~> 0"])
    s.add_runtime_dependency(%q<jwt>.freeze, [">= 2.1.0", "~> 2.1"])
    s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2.0", ">= 2.0.2"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_development_dependency(%q<codecov>.freeze, ["~> 0"])
    s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.21"])
    s.add_development_dependency(%q<dotenv>.freeze, ["~> 2.2", ">= 2.2.1"])
    s.add_development_dependency(%q<pry-byebug>.freeze, [">= 3.6.0", "~> 3.6"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rb-readline>.freeze, ["~> 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0.49.0"])
    s.add_development_dependency(%q<vcr>.freeze, ["~> 3.0", ">= 3.0.3"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0", ">= 3.0.1"])
  else
    s.add_dependency(%q<caze>.freeze, ["~> 0"])
    s.add_dependency(%q<jwt>.freeze, [">= 2.1.0", "~> 2.1"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0", ">= 2.0.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<codecov>.freeze, ["~> 0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.21"])
    s.add_dependency(%q<dotenv>.freeze, ["~> 2.2", ">= 2.2.1"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 3.6.0", "~> 3.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rb-readline>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.49.0"])
    s.add_dependency(%q<vcr>.freeze, ["~> 3.0", ">= 3.0.3"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0", ">= 3.0.1"])
  end
end
