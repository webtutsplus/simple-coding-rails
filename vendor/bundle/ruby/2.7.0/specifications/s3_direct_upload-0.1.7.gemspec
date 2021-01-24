# -*- encoding: utf-8 -*-
# stub: s3_direct_upload 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "s3_direct_upload".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Wayne Hoover".freeze]
  s.date = "2014-03-13"
  s.description = "Direct Upload to Amazon S3 With CORS and jquery-file-upload".freeze
  s.email = ["w@waynehoover.com".freeze]
  s.homepage = "".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Gives a form helper for Rails which allows direct uploads to s3. Based on RailsCast#383".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_runtime_dependency(%q<coffee-rails>.freeze, [">= 3.1"])
    s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 3.1"])
    s.add_runtime_dependency(%q<jquery-fileupload-rails>.freeze, ["~> 0.4.1"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 3.1"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 3.1"])
    s.add_dependency(%q<jquery-fileupload-rails>.freeze, ["~> 0.4.1"])
  end
end
