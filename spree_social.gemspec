lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_social/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_social'
  s.version     = SpreeSocial.version
  s.summary     = 'Adds social network login services (OAuth) to Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.author   = 'John Dyer'
  s.email    = 'jdyer@spreecommerce.com'
  s.homepage = 'http://www.spreecommerce.com'
  s.license  = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  #s.add_runtime_dependency 'spree_core', '>= 3.1.0', '< 4.0'
  s.add_runtime_dependency 'spree_core'
  s.add_runtime_dependency 'omniauth'
  s.add_runtime_dependency 'oa-core'
  s.add_runtime_dependency 'omniauth-twitter'
  s.add_runtime_dependency 'omniauth-facebook'
  s.add_runtime_dependency 'omniauth-github'
  s.add_runtime_dependency 'omniauth-google-oauth2'
  s.add_runtime_dependency 'omniauth-amazon'

  s.add_development_dependency 'capybara', '~> 2.11.0'
  s.add_development_dependency 'capybara-screenshot', '~> 1.0.14'
  s.add_development_dependency 'database_cleaner', '~> 1.5.3'
  s.add_development_dependency 'ffaker', '~> 1.32.1'
  s.add_development_dependency 'rspec-rails', '~> 3.4.2'
  s.add_development_dependency 'factory_girl', '~> 4.8'
  s.add_development_dependency 'pry-rails', '~> 0.3.4'
  s.add_development_dependency 'selenium-webdriver', '~> 3.0.5'
  s.add_development_dependency 'poltergeist', '~> 1.12.0'
  s.add_development_dependency 'simplecov', '~> 0.12.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.13'
  s.add_development_dependency 'coffee-rails', '~> 4.2.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.6'
  s.add_development_dependency 'guard-rspec', '~> 4.7.3'
  s.add_development_dependency 'rubocop', '~> 0.46.0'
  s.add_development_dependency 'ruby_dep', '~> 1.3.1'
  s.add_development_dependency 'listen', '3.1.1'
end
