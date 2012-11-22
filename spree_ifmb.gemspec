Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ifmb'
  s.version     = '0.0.1'
  s.summary     = 'TODO: Add gem summary here'
  # s.description = 'TODO: Add (optional) gem description here'
  s.required_ruby_version = '>= 1.9.2'

  s.author    = 'Sinemys'
  s.email     = 'info@sinemys.pt'
  s.homepage  = 'http://github.com/sinemys/spree_ifmb'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.2.0'
  s.add_dependency 'ifmb', '~> 0.0.2'
  # s.add_development_dependency('spree_sample', '~> 1.2.0')
  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'sqlite3'
end
