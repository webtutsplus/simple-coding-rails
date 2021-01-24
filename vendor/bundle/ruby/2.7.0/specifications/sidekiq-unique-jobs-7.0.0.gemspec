# -*- encoding: utf-8 -*-
# stub: sidekiq-unique-jobs 7.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-unique-jobs".freeze
  s.version = "7.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/mhenrixon/sidekiq-unique-jobs/issues", "changelog_uri" => "https://github.com/mhenrixon/sidekiq-unique-jobs/blob/master/CHANGELOG.md", "documentation_uri" => "https://mhenrixon.github.io/sidekiq-unique-jobs", "homepage_uri" => "https://mhenrixon.github.io/sidekiq-unique-jobs", "source_code_uri" => "https://github.com/mhenrixon/sidekiq-unique-jobs" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mikael Henriksson".freeze]
  s.date = "2021-01-20"
  s.description = "Prevents simultaneous Sidekiq jobs with the same unique arguments to run.\nHighly configurable to suite your specific needs.\n".freeze
  s.email = ["mikael@mhenrixon.com".freeze]
  s.executables = ["uniquejobs".freeze]
  s.files = ["bin/uniquejobs".freeze]
  s.homepage = "https://mhenrixon.github.io/sidekiq-unique-jobs".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "IMPORTANT!\n\nAutomatic configuration of the sidekiq middelware is no longer done.\nPlease see: https://github.com/mhenrixon/sidekiq-unique-jobs/blob/master/README.md#add-the-middleware\n\nThis version deprecated the following sidekiq_options\n\n  - sidekiq_options lock_args: :method_name\n\nIt is now configured with:\n\n  - sidekiq_options lock_args_method: :method_name\n\nThis is also true for `Sidekiq.default_worker_options`\n\nWe also deprecated the global configuration options:\n  - default_lock_ttl\n  - default_lock_ttl=\n  - default_lock_timeout\n  - default_lock_timeout=\n\nThe new methods to use are:\n  - lock_ttl\n  - lock_ttl=\n  - lock_timeout\n  - lock_timeout=\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Sidekiq middleware that prevents duplicates jobs".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<brpoplpush-redis_script>.freeze, ["> 0.0.0", "<= 2.0.0"])
    s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0", ">= 1.0.5"])
    s.add_runtime_dependency(%q<sidekiq>.freeze, [">= 5.0", "< 7.0"])
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0.20", "< 2.0"])
  else
    s.add_dependency(%q<brpoplpush-redis_script>.freeze, ["> 0.0.0", "<= 2.0.0"])
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0", ">= 1.0.5"])
    s.add_dependency(%q<sidekiq>.freeze, [">= 5.0", "< 7.0"])
    s.add_dependency(%q<thor>.freeze, [">= 0.20", "< 2.0"])
  end
end
