# -*- encoding: utf-8 -*-
# stub: imgproxy 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "imgproxy".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sergey Alexandrovich".freeze]
  s.date = "2020-05-11"
  s.description = "A gem that easily generates imgproxy URLs for your images".freeze
  s.email = "darthsim@gmail.com".freeze
  s.homepage = "https://github.com/imgproxy/imgproxy.rb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "imgproxy URL generator".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3.9.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9.0"])
    s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.83.0"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
    s.add_development_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.64.0"])
    s.add_development_dependency(%q<google-cloud-storage>.freeze, ["~> 1.11"])
    s.add_development_dependency(%q<rails>.freeze, ["~> 5.2"])
    s.add_development_dependency(%q<shrine>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.4.1"])
  else
    s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.9.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.83.0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.38.1"])
    s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.64.0"])
    s.add_dependency(%q<google-cloud-storage>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.2"])
    s.add_dependency(%q<shrine>.freeze, ["~> 3.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.4.1"])
  end
end
