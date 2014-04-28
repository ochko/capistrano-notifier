# -*- encoding: utf-8 -*-
require File.expand_path('../lib/capistrano/notifier/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Justin Campbell", "Nathan L Smith"]
  gem.email         = ["sysadmin@cramerdev.com"]
  gem.summary       = %q{Capistrano Notifier}
  gem.description   = %q{Simple notification hooks for Capistrano}
  gem.homepage      = "http://github.com/cramerdev/capistrano-notifier"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- spec/*`.split("\n")
  gem.name          = "capistrano-notifier"
  gem.require_paths = ["lib"]
  gem.version       = Capistrano::Notifier::VERSION

  case ENV['RAILS_VERSION']
  when '2.3'
    gem.add_dependency 'actionmailer', '~> 2.3.0'
  when '3.2'
    gem.add_dependency 'actionmailer', '~> 3.2.0'
  when '4.0'
    gem.add_dependency 'actionmailer', '~> 4.0.0'
  else
    gem.add_dependency 'actionmailer'
  end

  gem.add_dependency 'activesupport'
  gem.add_dependency 'capistrano', '>= 2', '< 3'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'timecop', '~> 0.5.0'
end
